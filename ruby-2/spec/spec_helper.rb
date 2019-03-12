# frozen_string_literal: true

require "bundler/setup"
require "simplecov"
require "simplecov-rcov"

SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::RcovFormatter
])
SimpleCov.coverage_dir("coverage2")
SimpleCov.start

require_relative "../app/app"
