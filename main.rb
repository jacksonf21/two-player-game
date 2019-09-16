# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './player'
require './question'
require './game'
require './turn'

game = Game.new
game.next_question

## Your test code can go here

# binding.pry
