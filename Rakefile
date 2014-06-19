require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'fileutils'
require 'rspec/core/rake_task'
require 'fpm'

task :default do
  sh "rake -s -T"
end

desc "Run specs"
RSpec::Core::RakeTask.new() do |t|
  t.rspec_opts = %w[--color]
  t.pattern = "spec/**/*_spec.rb"
end

desc "Generate deb file for the gem and command-line tools"
task :package do
  sh "mkdir -p build"
  sh "if [ -f *.gem ]; then rm *.gem; fi"
  sh "gem build nagios-support.gemspec && mv *.gem build/"
  sh "cd build && fpm -s gem -t deb -n rubygem-nagios-support *.gem"
end

desc "Clean everything up"
task :clean do
  sh "rm -rf build"
end

desc "Create a debian package"
task :install => [:package] do
  sh "sudo dpkg -i build/*.deb"
end
