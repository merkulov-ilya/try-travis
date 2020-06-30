# frozen_string_literal: true

# require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rubocop/rake_task'
require 'yard'

# desc 'Print reminder about eating more fruit.'
# task :apple do
#   puts 'Eat more apples!'
#   # puts $LOAD_PATH
# end

desc 'Run tests'
task :test do
  # Rake::TestTask.new(:test) do |t|
  Rake::TestTask.new do |t|
    # t.libs << "test"
    # t.libs << "lib"
    # t.test_files = FileList["test/**/*_test.rb"]
    t.libs << 'metz.rb'
    t.test_files = FileList['test/**/*_test.rb']
  end
end

# desc 'Generate YARD docs'
# task :doc do
# end

YARD::Rake::YardocTask.new do |t|
  # t.files = %w[app/**/*.rb lib/**/*.rb - doc/FAQ.md doc/Changes.md]
  t.files = %w[metz.rb]
end

desc 'Run Rubocop'
task :rubocop do
  RuboCop::RakeTask.new
end

task default: %i[test rubocop yard]
