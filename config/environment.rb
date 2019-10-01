require 'bundler'
Bundler.require

require_all 'lib'
require_all 'app'

include Frame
include Prompt
include Banner

def clear_terminal
  Gem.win_platform? ? (system "cls") : (system "clear")
end

