.PHONY: shellcheck
shellcheck: ## run shellcheck validation
	.ci/scripts/validate/shellcheck

.PHONY: release
release:
	.ci/scripts/build/release

TESTS=$(wildcard .ci/scripts/test/* | sort)
.PHONY: test-unit
test-unit: $(TESTS)
	$<
