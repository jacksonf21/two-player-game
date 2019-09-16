
class Game
  attr :turn

  P1 = Player.new(3)
  P2 = Player.new(3)

  def initialize
    @turn = 1
  end

  def player_lives
    puts "P1: #{P1.lives}/3 P2: #{P2.lives}/3"
  end

  def next_question
    i = 0
    while i == 0

      if (P1.lives.to_i <= 0 || P2.lives.to_i <= 0)
        i = 1
        winner = ""

        P2.lives.to_i ? 
        winner = "Player 1 wins with a score of #{P1.lives}/3" : 
        winner = "Player 2 wins with a score of #{P2.lives}/3"
        
        puts winner
        puts "------ GAME OVER ------"
        puts "Good bye!"
      else
        player_lives
        puts "------ NEW TURN ------"
        if (@turn.modulo(2) == 0)
          ans = Question.new(2).rand_question
          if (!ans)
            P1.lose_life
            @turn += 1
          else
            @turn += 1
          end
        else
          ans = Question.new(1).rand_question
          if (!ans)
            P2.lose_life
            @turn += 1
          else
            @turn += 1
          end
        end
      end

    end
  end
  
end

game = Game.new
game.next_question
