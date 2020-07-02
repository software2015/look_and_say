# Look and say

This is gem for generating look and say sequences. Rspec is used for testing.

## Requirements

	ruby >= 2.5.0

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'look_and_say'
```

And then run:

    $ bundle install

Or just run:

    $ gem install look_and_say

## Run tests

	rspec

## Usage

### On console

Run:

	look_and_say

And the program asks to enter number of sequences to be generated

### In code

Add look_and_say module:

	require 'look_and_say'

Use class for generating sequences

	number = LookAndSay::LookAndSay.new
	number.look_and_say(<number of sequences to be generated>)

