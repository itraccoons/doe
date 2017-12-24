.PHONY: shellcheck
shellcheck: ## run shellcheck validation
	.ci/scripts/validate/shellcheck

.PHONY: unit-test
unit-test: ## run tests
	.ci/scripts/test/unit

.PHONY: release
release:
	.ci/scripts/build/release

.PHONY: install
install:
	.ci/scripts/test/unit
