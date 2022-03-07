require "./player"
require "./questions"

class Game
  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def start_game
    while player1.life > 0 && player2.life > 0
      current_player = current_player == player1 ? player2 : player1
      puts "\n ...NEW TURN: #{current_player.name}..."

      puts "#{current_player.name}: what does #{Questions.randomNum1} plus #{Questions.randomNum2} equal to?"
      isAnswerRight = gets.chomp

      if Questions.verify_answer(isAnswerRight)
        puts "#{current_player.name}: YES! You are correct." 
        puts "#{player1.name}: #{player1.life}/3 vs. #{player2.name}: #{player2.life}/3"
      else
        puts "#{current_player.name}: Seriously? No!"
        current_player.life -= 1
        puts "#{player1.name}: #{player1.life}/3 vs. #{player2.name}: #{player2.life}/3"
      end
    end 
    puts "The winner is #{self.winner}."
    puts "GAME OVER"
  end
 def winner
  player1.life > 0 ? player1.name : player2.name
 end
end
