require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'application'
require 'board'
require 'boardcase'
require 'game'
require 'player'
require 'show'

Game1 = Game.new