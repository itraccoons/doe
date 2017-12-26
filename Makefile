.PHONY: shellcheck
shellcheck: ## run shellcheck validation
	.ci/scripts/validate/shellcheck

.PHONY: unit-test
unit-test: ## run tests
	.ci/scripts/test/unit

.PHONY: release
release:
	.ci/scripts/build/release

.PHONY: test-unit
test-unit:
	find .ci/scripts/test -type f -print0 | xargs -0 echo
