require "./game"
require "./player"


player_1 = Players.new('Player 1')
player_2 = Players.new('Player 2')
game = Game.new(player_1, player_2)
game.start_game