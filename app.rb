require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require_relative 'src/t3_worker.rb'

@t3 = TicTacToe::T3Worker.new