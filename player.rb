# Task 1 - Classes
class Players
  attr_accessor :name, :life, :score

   #contrustructor
    def initialize(name)
      #  keep track of a player's life and score
        @life = 3
        @score = 0
        @name = name
    end 

    def wrong
        @life -= 1
        puts "Seriously? No!"
    end 

    def correct
      @score += 1
    end
  
    def player_score
      # keep track of player's score
    end

    def current_player(p1, p2)
      # maybe have an instance variable to keep track of current player??
      @player1
    end
  end