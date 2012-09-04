#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake/testtask'

TestCucumber::Application.load_tasks
=begin
Rake::TestTask.new do |t| 
	t.libs = ["lib", "spec"]
	t.name = "test:integration"
	t.warning = true
	t.verbose = true
	t.test_files = FileList['spec/integration/*_spec.rb']
end
=end
task :turn_off_alarm do
	puts "Turned off alarm."
end

task :groom_myself do
  puts "wear every expensive accessory"
end

task :make_coffee do
	cups = ENV["COFFEE_CUPS"] || 2
	puts "made #{cups} cups of coffee"
end

task :get_going do 
	puts "start the bike and go to off"
end

task :ready_for_the_day => [:turn_off_alarm, :groom_myself, :make_coffee, :get_going] do
	puts "Ready for the day"
end

task :Add do
  a=1
  b=4
  c=a+b
  puts "#{c} added"
end