setup: install

install:
	bundle install

test:
	rake test

lint:
	bundle exec rubocop -A .

.PHONY: test
