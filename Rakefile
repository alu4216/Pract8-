$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec


task :fspec do
  sh "rspec -Ilib spec/spec.rb"
end

task :mspec do
  sh "rspec -Ilib spec/matrix_spec.rb"
end

desc "Run rspec with --format documentation "
task :doc do
  sh "rspec -Ilib spec/spec.rb --format documentation"
end
