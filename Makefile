PROJECT:=Laurux
APP:=Laurux3.gambas
GIT_SHA1:=$(shell git rev-list HEAD | head -n 1)
GIT_BRANCH:=$(shell git branch | grep "*" | sed -e "s/^* //g")

vecho = @echo
ifeq ("$(V)","1")
Q :=
vvecho = @echo
else
Q := @
vvecho = @true
endif

all: $(APP)

$(APP): .project $(shell find .src -type f)
	$(vvecho) "Setting sha1 to $(GIT_SHA1) for $(GIT_BRANCH)"
	sed -i -e "s/SHA1_REPO_GIT_Laurux/$(GIT_SHA1)/g" .src/Communs/FAbout.class
	sed -i -e "s/BRANCH_REPO_GIT_Laurux/$(GIT_BRANCH)/g" .src/Communs/FAbout.class
	$(vecho) "Compiling Project $(PROJECT)"
	$(Q)gbc3 -agt >/dev/null 2>&1
	$(vecho) "Generation Binary $@"
	$(Q)gba3 -o $@
	$(vvecho) "Restoring default sha1 / branch"
	sed -i -e "s/$(GIT_SHA1)/SHA1_REPO_GIT_Laurux/g" .src/Communs/FAbout.class
	sed -i -e "s/$(GIT_BRANCH)/BRANCH_REPO_GIT_Laurux/g" .src/Communs/FAbout.class

clean:
	$(vecho) "Cleaning Project $(PROJECT)"	
	$(Q)rm -f $(APP)
	$(Q)rm -rf .gambas
