ROOTNAME = bsmith89
GIT = git

.DELETE_ON_ERROR:
.SECONDARY:
.POSIX:
.DEFAULT_GOAL := help

SPECS = $(shell git ls-files */ | xargs dirname)

## List all possible specification names.
list:
	@echo ${SPECS}

## Build the container specified by %/.
build-%: .build/%-build
	@echo Successfully built $*.

## Push the container specified by %/ to remote.
push-%: .build/%-push
	@echo Successfully pushed $* to remote.

## Run the container specified by %/.
run-%: .build/%-build
	docker run -it --rm ${ROOTNAME}/$*

.build/%-build: $(shell ${GIT} ls-files $*)
	docker build -t ${ROOTNAME}/$* $*
	@touch $@

.build/%-push: .build/%-build
	docker push ${ROOTNAME}/$*
	@touch $@


# Stolen from https://gist.github.com/klmr/575726c7e05d8780505a
# sed script explained:
# /^##/:
# 	* save line in hold space
# 	* purge line
# 	* Loop:
# 		* append newline + line to hold space
# 		* go to next line
# 		* if line starts with doc comment, strip comment character off and loop
# 	* remove target prerequisites
# 	* append hold space (+ newline) to line
# 	* replace newline plus comments by `---`
# 	* print line
# Separate expressions are necessary because labels cannot be delimited by
# semicolon; see <http://stackoverflow.com/a/11799865/1968>
.PHONY: help
help:
	@echo "$$(tput bold)Available rules:$$(tput sgr0)"
	@echo
	@sed -n -e "/^## / { \
		h; \
		s/.*//; \
		:doc" \
		-e "H; \
		n; \
		s/^## //; \
		t doc" \
		-e "s/:.*//; \
		G; \
		s/\\n## /---/; \
		s/\\n/ /g; \
		p; \
	}" ${MAKEFILE_LIST} \
	| LC_ALL='C' sort --ignore-case \
	| awk -F '---' \
		-v ncol=$$(tput cols) \
		-v indent=19 \
		-v col_on="$$(tput setaf 6)" \
		-v col_off="$$(tput sgr0)" \
	'{ \
		printf "%s%*s%s ", col_on, -indent, $$1, col_off; \
		n = split($$2, words, " "); \
		line_length = ncol - indent; \
		for (i = 1; i <= n; i++) { \
			line_length -= length(words[i]) + 1; \
			if (line_length <= 0) { \
				line_length = ncol - indent - length(words[i]) - 1; \
				printf "\n%*s ", -indent, " "; \
			} \
			printf "%s ", words[i]; \
		} \
		printf "\n"; \
	}'
