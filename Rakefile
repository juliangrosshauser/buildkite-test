# frozen_string_literal: true

require "bundler/setup"
require "rake/clean"
require "rubocop/rake_task"
require "rspec/core/rake_task"

RuboCop::RakeTask.new do |t|
  t.options << "--display-cop-names"
end

RSpec::Core::RakeTask.new(:spec1) do |t|
  t.pattern = "ruby-1/spec/**/*_spec.rb"
  t.ruby_opts = "-I ruby-1/spec"
  t.rspec_opts = %w[
    --color
    --format documentation
    --order rand
    --format RspecJunitFormatter --out junit1.xml
    --require spec_helper
  ]
end

RSpec::Core::RakeTask.new(:spec2) do |t|
  t.pattern = "ruby-2/spec/**/*_spec.rb"
  t.ruby_opts = "-I ruby-2/spec"
  t.rspec_opts = %w[
    --color
    --format documentation
    --order rand
    --format RspecJunitFormatter --out junit2.xml
    --require spec_helper
  ]
end

CLEAN.include("junit1.xml", "junit2.xml")

task default: %w[rubocop spec1 spec2]
