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

    def hello
        puts "mmmmmmmmmm"
    end

end