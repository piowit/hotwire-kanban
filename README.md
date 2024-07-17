# README

A simple application to experiment with Turbo.

## Setup

This application uses:
- ruby 3.3.0
- sqlite 3
- redis

Have them installed, clone repo and run:

```
$ bundle
$ rails db:setup
```

You can run `rails db:seed` many times to have more data.

Use `rails s` to run the server.

## Testing

Run `$ rspec` for tests.

Run `$ rubocop` for linter check.
