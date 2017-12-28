.PHONY: shellcheck
shellcheck: ## run shellcheck validation
	.circleci/scripts/validate/shellcheck

.PHONY: release
release:
	.circleci/scripts/build/release

.PHONY: test-unit
test-unit:
	.circleci/scripts/test/unit
