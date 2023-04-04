require './question.rb'
require './response.rb'

class Main

  # Player health 
  @@p1_HP = 3
  @@p2_HP = 3

  def initialize

    #Initial turn starts with player 1

    # While p1 and p2 are above 0 HP
    while @@p1_HP > 0 && @@p2_HP > 0

      question1 = Question.new
      answer1 = question1.question_player1
      response1 = Response.new

      # If the response of answer1 is equal to true (correct), p1 no lives lost
      if response1.compare(answer1)
        @@p1_HP
        puts "P1: #{@@p1_HP}/3 vs P2: #{@@p2_HP}/3"

        # Else answer1 is false (incorrect), p1 lose 1 life
      else
        @@p1_HP -= 1
        puts "P1: #{@@p1_HP}/3 vs P2: #{@@p2_HP}/3"
      end

      # If p1 health equals to 0
      if @@p1_HP == 0
        puts "Player 1 wins with #{@@p1_HP}/3 lives remaining! 🎊"
        puts "---- GAME OVER ----"
        puts "Thank you for playing!"
        break
      
      # If p2 health equals to 0
      elsif @@p2_HP == 0
        puts "Player 2 wins with #{@@p2_HP}/3 lives remaining! 🎊"
        puts "---- GAME OVER ----"
        puts "Thank you for playing!"
        break
      end

      # Begin new turn (Player 2)
      puts "---- NEW TURN ----"


      question2 = Question.new
      answer2 = question2.question_player2
      response2 = Response.new

      # If the response of answer2 is equal to true (correct), p2 no lives lost
      if response2.compare(answer2)
        @@p2_HP
        puts "P1: #{@@p1_HP}/3 vs P2: #{@@p2_HP}/3"

        # Else answer2 is false (incorrect), p2 lose 1 life
      else
        @@p2_HP -= 1
        puts "P1: #{@@p1_HP}/3 vs P2: #{@@p2_HP}/3"
      end

      # If p1 health equals to 0
      if @@p1_HP == 0
        puts "Player 1 wins with #{@@p1_HP}/3 lives remaining! 🎊"
        puts "---- GAME OVER ----"
        puts "Thank you for playing!"
        break
      
      # If p2 health equals to 0
      elsif @@p2_HP == 0
        puts "Player 2 wins with #{@@p2_HP}/3 lives remaining! 🎊"
        puts "---- GAME OVER ----"
        puts "Thank you for playing!"
        break
      end


      puts "---- NEW TURN ----"

    end
  end
end

math_game = Main.new
