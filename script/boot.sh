#!/usr/bin/env bash

# Start the server during development
RACK_ENV=none RAILS_ENV=development unicorn -c config/unicorn.rb
