ENV["MACK_ENV"] = ENV['RACK_ENV']
require 'rubygems'
load("Rakefile")
require 'mack'
run Mack::Utils::Server.build_app
