#!/usr/bin/env ruby

require 'bundler/setup'
Bundler.require
require_relative 'lib/airhelp.rb'

Airhelp.start(ARGV)

exit 0
