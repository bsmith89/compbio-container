ROOTNAME=bsmith89
GIT=git

.DELETE_ON_ERROR:
.SECONDARY:
.POSIX:

.build/%-build: $(shell ${GIT} ls-files $*)
	docker build -t ${ROOTNAME}/$* $*
	@touch $@

.build/%-push: .build/%-build
	docker push ${ROOTNAME}/$*
	@touch $@

build-%: .build/%-build
	@echo Successfully built $*.

push-%: .build/%-push
	@echo Successfully pushed $* to remote.

run-%: .build/%-build
	docker run -it --rm ${ROOTNAME}/$*
