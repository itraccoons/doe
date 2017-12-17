.PHONY: shellcheck
shellcheck: ## run shellcheck validation
	.ci/scripts/validate/shellcheck


.PHONY: release
release:
	.ci/scripts/build/release
