
# encoding: utf-8
require "jars/installer"
require "fileutils"

task :default do
  system('rake -vT')
end

task :vendor do
  exit(1) unless system './gradlew vendor'
end

task :clean do
  ["vendor/jar-dependencies", "Gemfile.lock"].each do |p|
    FileUtils.rm_rf(p)
  end
end

task :test do
  require 'rspec/core/runner'
  require 'rspec'
  system './gradlew clean test'
  Rake::Task[:install_jars].invoke
  exit(RSpec::Core::Runner.run(Rake::FileList['spec/**/*_spec.rb']))
end