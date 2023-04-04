class Question

  def question_player1
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "Player 1: What does #{num1} + #{num2} equal?"
    answer = num1 + num2
  end

  def question_player2
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "Player 2: What does #{num1} + #{num2} equal?"
    answer = num1 + num2
  end
end

=begin 

~ TESTING ~

player1 = Question.new
answer = player1.question_player1
puts answer

player2 = Question.new
answer = player2.question_player2
puts answer

=end