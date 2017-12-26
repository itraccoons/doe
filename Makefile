.PHONY: shellcheck
shellcheck: ## run shellcheck validation
	.ci/scripts/validate/shellcheck

.PHONY: release
release:
	.ci/scripts/build/release

.PHONY: test-unit
test-unit:
	.ci/scripts/test/00_install
	.ci/scripts/test/01_calls
