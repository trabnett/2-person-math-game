require_relative './math'

class Turn
    attr_accessor :question1, :penalty, :points
    def initialize
        @question1 = Question.new  
        @answer = ""
        @penalty = 0
        @points = 0      
    end

    def hello
        puts "#{@question1.hello}"
    end
    
    def play
        puts "#{@question1.multiply_question}"
        @answer = gets.chomp
        if "#{@answer}" == "#{@question1.multiply_answer}"
            @points += 1
            puts "#{@answer} is your answer, and the right answer is #{@question1.multiply_answer}"
            puts "=== Correct! ==="
        else
            @penalty -= 1
            puts "#{@answer} is your answer, and the right answer is #{@question1.multiply_answer}"
            puts "===== Nope ====="
        end
    end

end