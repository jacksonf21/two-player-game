class Question
  attr_accessor :player

  def initialize(p)
    @player = p
  end

  def rand_question
    x = rand(1..20)
    y = rand(1..20)
    total_sum = x + y

    puts "Player #{player}, what is #{x} + #{y}?"
    ans = gets.chomp

    if (ans.to_i == total_sum)
      puts "Correct!"
      true
    elsif  
      puts "Wrong!"
      false
    end

  end 
  #fire chomp question with randomized summation 
  #if ans is true fire correct
  #else deduct 1 from life
  #call next question
end