# Foggle

[![Build Status](https://travis-ci.org/macklinu/foggle.svg?branch=master)](https://travis-ci.org/macklinu/foggle)
[![Codecov](https://img.shields.io/codecov/c/github/macklinu/foggle.svg)](https://codecov.io/github/macklinu/foggle?branch=master)
[![Sponsor](https://img.shields.io/badge/Sponsor-Detroit%20Labs-000000.svg)](http://www.detroitlabs.com)

> Environment-based feature toggles for Rails

## Get it.

Add this line to your application's `Gemfile`:

```ruby
gem "foggle"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foggle

## Do it.

Add a feature toggle to the environment. The naming convention is `FEATURE_{{NAME}}`, where `{{NAME}}` is the feature name you're working on.

Let's say you're working on __cool stuff__. :sunglasses:

```
# add to the environment
FEATURE_COOL_STUFF=true
```

In your views and controllers, you have access to the method that rules them all: `enabled?`.

```erb
<% if enabled? :cool_stuff %>
  <%= render "cool_stuff" %>
<% end %>
```

This method just reads in the environment variable you've set. Returns `true` or `false`.

There are a couple ways to use `foggle`, depending on your preference.

`feature?` is an alias for `enabled?`.

```ruby
enabled? :cool_stuff
feature? :cool_stuff
```

These methods also take strings.

```ruby
enabled? "cool_stuff"
enabled? "COOL_STUFF"
```

Passing in a Symbol version of your feature name is recommended, only because it looks cool and Ruby-esque. Do you.

## Why?

The team at [Current](https://www.hirecurrent.com) wanted a simple feature toggle system without having to integrate a larger feature toggle system into the codebase. Since we are already deploying to Heroku and could quickly modify environment variables across our environments, we thought we'd try this out.

## Cool.

Totes.

## Hack it.

### Editing

```sh
# install dependencies
$ bin/setup

# run Rubocop and tests
$ bundle exec rake spec
```

### Installation

Install Foggle locally

```sh
$ bundle exec rake install
```

Deploy Foggle

```sh
# bump `foggle/version`
$ bundle exec rake release
```

## Make it.

Bug reports? Ideas? [Bring 'em](https://github.com/macklinu/foggle/issues). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License


    Copyright 2016 Macklin Underdown

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
