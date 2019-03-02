# frozen_string_literal: true

require "bundler/setup"
require "rake/clean"
require "rubocop/rake_task"
require "rspec/core/rake_task"

RuboCop::RakeTask.new do |t|
  t.options << "--display-cop-names"
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = "ruby/spec/**/*_spec.rb"
end

CLEAN.include("junit.xml")

task default: %w[rubocop spec]
