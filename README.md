# Slurp

Slurp allows you to temporarily switch to using an in-memory sqlite database with Rails without affecting your main database configuration. It comes in useful when you're doing test driven development and need the tests to run as fast as possible.

## Installation

Add this line to your application's Gemfile:

    gem 'slurp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slurp

## Usage

Prepend your command with `SLURP=1` to get your database loaded in memory.

    $ SLURP=1 rspec spec/
