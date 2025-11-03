#!/usr/bin/env rackup
# This file can be used to start Padrino,
# just execute it from the command line.

require File.expand_path('config/boot.rb', __dir__)
require 'grape-active_model_serializers'

run Padrino.application
