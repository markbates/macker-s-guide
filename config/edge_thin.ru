# ENV["MACK_ENV"] = ENV["RACK_ENV"]
load "Rakefile"  
require 'rubygems'  
require 'mack'  
run Mack::Utils::Server.build_app