class Question
    def initialize
        @num1 = rand(1...20)
        @num2 = rand(1...20)
    end
    def multiply_question
        puts "What is #{@num1} times #{@num2}?"
    end
    def multiply_answer
         @num1 * @num2
    end
end

class Player
    attr_accessor :name, :lives

    def initialize name
        @name = name
        @lives = 3
        @points = 0
    end

    def wrong_answer
        @lives -= 1
    end

    def right_answer
        @points += 1
    end

    def summary
        puts "#{@name} has #{@point}points and #{@lives} lives left."
    end

    def dead
        @lives = 0
    end
end

puts "Hello, welcome to this challenging Math game. Please press Enter to start"
gets

p1 = Player.new('p1')
p2 = Player.new('p2')
answer = "hello"

puts "Player 1, please enter your name"
p1.name = gets.chomp

puts "Player 2, please enter your name"
p2.name = gets.chomp


question1 = Question.new

puts question1.multiply_question
# answer = gets
# puts.chomp question1.multiply_answer

