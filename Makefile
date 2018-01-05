.PHONY: shellcheck
shellcheck: ## run shellcheck validation
	.circleci/scripts/validate/shellcheck

.PHONY: yamllint
yamllint: ## run yamllint validation
	.circleci/scripts/validate/yamllint

.PHONY: test-unit
test-unit:
	.circleci/scripts/test/unit

.PHONY: release
release:
	.circleci/scripts/build/release
