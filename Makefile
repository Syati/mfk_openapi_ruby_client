.PHONY: build clean test

.DEFAULT_GOAL := help

help: ## print this message
	@echo ""
	@echo "Usage: make SUB_COMMAND argument_name=argument_value"
	@echo ""
	@echo "Command list:"
	@echo ""
	@printf "\033[36m%-30s\033[0m %-50s %s\n" "[Sub command]" "[Description]" "[Example]"
	@grep -E '^[/a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | perl -pe 's%^([/a-zA-Z_-]+):.*?(##)%$$1 $$2%' | awk -F " *?## *?" '{printf "\033[36m%-30s\033[0m %-50s %s\n", $$1, $$2, $$3}'

generate: ## create ruby client ## client/ruby/generate
	docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli:v5.0.1 generate -i /local/api/swagger.yaml -g ruby -o /local/ -c /local/api/config/openapi_ruby_config.yaml
