.PHONY: run compile
compile: rebar3
	./rebar3 compile

run: compile
	erl -pa deps/*/ebin apps/*/ebin -s bq_app

rebar3:
	wget https://s3.amazonaws.com/rebar3/rebar3 && \
	chmod +x rebar3
