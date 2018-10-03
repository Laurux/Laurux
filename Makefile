PROJECT:=Laurux
APP:=Laurux
GIT_SHA1:=$(shell git rev-list HEAD | head -n 1)
GIT_BRANCH:=$(shell git branch | grep "*" | sed -e "s/^* //g")
VERSION:=$(shell grep "Version=" .project | sed -e "s/Version=//g")
CHANGELOG_GEN:=$(HOME)/github-changelog-generator/bin/github_changelog_generator
GIT_TOKEN:=`cat $(HOME)/github_token`

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

all: $(APP) $(APP).desktop $(APP)-Pos.desktop

$(APP).desktop:
	$(Q) echo "[Desktop Entry]" > $@
	$(Q) echo "Name=$(APP)" >> $@
	$(Q) echo "Exec=sh -c \"mkdir -p \\\$$HOME/.local/share/icons && cp -f \\\$$HOME/$(APP)/Icones/Larus.png \\\$$HOME/.local/share/icons/ ; cp \\\$$HOME/$(APP)/$(APP).desktop `xdg-user-dir DESKTOP` ; \\\$$HOME/$(APP)/$(APP)\"" >> $@
	$(Q) echo "Icon=Larus.png" >> $@
	$(Q) echo "Terminal=false" >> $@
	$(Q) echo "Type=Application" >> $@
	$(Q) echo "Categories=Finance" >> $@
	$(Q) chmod 755 $@

$(APP)-Pos.desktop:
	$(Q) echo "[Desktop Entry]" > $@
	$(Q) echo "Name=$(APP)-Pos" >> $@
	$(Q) echo "Exec=sh -c \"mkdir -p \\\$$HOME/.local/share/icons && cp -f \\\$$HOME/$(APP)/Icones/Laurux-Pos.png \\\$$HOME/.local/share/icons/ ; cp \\\$$HOME/$(APP)/$(APP)-Pos.desktop `xdg-user-dir DESKTOP` ; \\\$$HOME/$(APP)/$(APP) -p\"" >> $@
	$(Q) echo "Icon=Laurux-Pos.png" >> $@
	$(Q) echo "Terminal=false" >> $@
	$(Q) echo "Type=Application" >> $@
	$(Q) echo "Categories=Finance" >> $@
	$(Q) chmod 755 $@

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
	$(Q)rm -f $(APP).desktop $(APP)-Pos.desktop
	$(Q)rm -rf $(O)
	$(Q)rm -rf .gambas

changelog:
	$(vecho) "Generating Changelog $(PROJECT)"
	$(Q)$(CHANGELOG_GEN) -u Laurux -p $(PROJECT) -t $(GIT_TOKEN)

$(O)/$(VERSION)/$(PROJECT).tar.gz: $(APP) $(APP).desktop Icones/Larus.png
	$(vecho) "Packaging $(PROJECT) v$(VERSION) ($(GIT_SHA1)) in path $(O)/$(VERSION)"
	$(Q) mkdir -p $(O)/$(VERSION)
	$(Q) echo "$(PROJECT) v$(VERSION)" > $(O)/$(VERSION)/version.txt
	$(Q) tar --transform 's,^,$(PROJECT)/,' -zcf $@ $^

.phony: package
package: $(O)/$(VERSION)/$(PROJECT).tar.gz

