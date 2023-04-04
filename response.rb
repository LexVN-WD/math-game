class Response

  attr_accessor :input


  # User I/O
  def input
    input = gets.chomp
  end

  def compare(number)
    if input.to_i == number
      puts "This is correct! 👍"
      true
    else
      puts "This is Incorrect! 👎"
      false
    end
  end
end

=begin 

~ TESTING ~
answer = Response.new
answer.compare(10)


=end