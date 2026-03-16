.PHONY: test validate plan-test examples-test

test: validate plan-test examples-test

validate:
	terraform fmt -check -recursive
	terraform validate

plan-test:
	@exit_code=0; \
	for dir in examples/*/; do \
		echo "==> Plan testing $$dir"; \
		(cd $$dir && terraform init -input=false && terraform plan) || exit_code=$$?; \
	done; \
	exit $$exit_code

examples-test:
	@exit_code=0; \
	for dir in examples/*/; do \
		echo "==> Apply/Destroy testing $$dir"; \
		(cd $$dir && terraform init -input=false && \
			(terraform apply -auto-approve || true) && \
			terraform destroy -auto-approve) || exit_code=$$?; \
	done; \
	exit $$exit_code
