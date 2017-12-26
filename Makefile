.PHONY: shellcheck
shellcheck: ## run shellcheck validation
	.ci/scripts/validate/shellcheck

.PHONY: release
release:
	.ci/scripts/build/release

.PHONY: test-unit
test-unit:
	@$(foreach i, $(sort $(wildcard .ci/scripts/test/*)), exec $i)
