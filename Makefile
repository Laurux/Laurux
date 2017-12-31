PROJECT:=Laurux
APP:=Laurux
GIT_SHA1:=$(shell git rev-list HEAD | head -n 1)
GIT_BRANCH:=$(shell git branch | grep "*" | sed -e "s/^* //g")
VERSION:=$(shell grep "Version=" .project | sed -e "s/Version=//g")

vecho = @echo
ifeq ("$(V)","1")
Q :=
vvecho = @echo
else
Q := @
vvecho = @true
endif

ifeq ("$(O)","")
O:=.hidden/Stable
endif

all: $(APP)

$(APP): .project $(shell find .src -type f)
	$(vvecho) "Setting version info sha1 to $(GIT_SHA1) for $(GIT_BRANCH)"
	$(Q) echo "$(GIT_SHA1)" > sha1.txt
	$(Q) echo "$(GIT_BRANCH)" > branch.txt
	$(vecho) "Compiling $(PROJECT) for Version $(VERSION) ($(GIT_SHA1))"
	$(Q)gbc3 -agt >/dev/null 2>&1
	$(vecho) "Generation Binary $@"
	$(Q)gba3 -o $@
	$(vvecho) "Restoring default sha1 / branch"

clean:
	$(vecho) "Cleaning $(PROJECT)"	
	$(Q)rm -f $(APP)
	$(Q)rm -rf $(O)
	$(Q)rm -rf .gambas

$(O)/$(VERSION)/$(PROJECT).tar.gz: $(APP) Icones/Larus.png
	$(vecho) "Packaging $(PROJECT) v$(VERSION) ($(GIT_SHA1)) in path $(O)/$(VERSION)"
	$(Q) mkdir -p $(O)/$(VERSION)
	$(Q) echo "$(PROJECT) v$(VERSION)" > $(O)/$(VERSION)/version.txt
	$(Q) tar --transform 's,^,$(PROJECT)/,' -zcf $@ $^

.phony: package
package: $(O)/$(VERSION)/$(PROJECT).tar.gz

