require 'bundler'
Bundler.require

require_all 'lib'
require_all 'src'
# require_all 'src/'

include Frame
include Prompt
include Banner


def clear_terminal
  Gem.win_platform? ? (system "cls") : (system "clear")
end

