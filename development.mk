.PHONY: run

setup_env := { export GOPATH="$$(pwd):$$(pwd)/../.."; export PATH="$$PATH:$$(pwd)/bin"; }; cd -;

run:
	bash -c ' \
	$(setup_env) \
	while true; do \
		go run main.go -l debug || true; sleep 1.5; \
	done'
