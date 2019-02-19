class Player
    attr_accessor :name, :lives, :points

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
        puts "#{@name} has #{@points} points and #{@lives} lives left."
    end

    def dead
        @lives = 0
    end
end