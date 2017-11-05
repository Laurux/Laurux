PROJECT:=Laurux
APP:=Laurux3.gambas
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
O:=Stable
endif

all: $(APP)

$(APP): .project $(shell find .src -type f)
	$(vvecho) "Setting sha1 to $(GIT_SHA1) for $(GIT_BRANCH)"
	$(Q) sed -i -e "s/SHA1_REPO_GIT_Laurux/$(GIT_SHA1)/g" .src/Communs/FAbout.class
	$(Q) sed -i -e "s/BRANCH_REPO_GIT_Laurux/$(GIT_BRANCH)/g" .src/Communs/FAbout.class
	$(vecho) "Compiling $(PROJECT) for Version $(VERSION) ($(GIT_SHA1))"
	$(Q)gbc3 -agt >/dev/null 2>&1
	$(vecho) "Generation Binary $@"
	$(Q)gba3 -o $@
	$(vvecho) "Restoring default sha1 / branch"
	$(Q) sed -i -e "s/$(GIT_SHA1)/SHA1_REPO_GIT_Laurux/g" .src/Communs/FAbout.class
	$(Q) sed -i -e "s/$(GIT_BRANCH)/BRANCH_REPO_GIT_Laurux/g" .src/Communs/FAbout.class

clean:
	$(vecho) "Cleaning $(PROJECT)"	
	$(Q)rm -f $(APP)
	$(Q)rm -rf .gambas

$(O)/$(VERSION)/$(PROJECT).tar.gz: $(APP) $(shell find *.md -type f) Bcrcpt.txt Bcr.txt Cpostaux.csv Icones son tips
	$(vecho) "Packaging $(PROJECT) v$(VERSION) ($(GIT_SHA1)) in path $(O)/$(VERSION)"
	$(Q) mkdir -p $(O)/$(VERSION)
	$(Q) tar --transform 's,^,$(PROJECT)/,' -zcf $@ $^

.phony: package
package: $(O)/$(VERSION)/$(PROJECT).tar.gz

