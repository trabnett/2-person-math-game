
# require_relative './math'
# require_relative './players'
# require_relative './turn'


class Game 
    attr_accessor :winningScore
    def initialize
        @players = [Player.new('player1'), player2 = Player.new('player2')]
        @winningScore = 0
    end


    def play
        puts "Player 1, please enter your name."
        @players[0].name = gets.chomp

        puts "Player 2, please enter your name."
        @players[1].name = gets.chomp

        p @players
        counter = 1
        until "#{@players[0].lives}" == "0" || "#{@players[1].lives}" == "0" do
            puts "Round #{counter}"
            if counter %2 != 0 ? true : false
                turn = Turn.new
                puts "It's #{@players[0].name}'s turn."
                turn.play
                @players[0].points += turn.points
                @players[0].lives += turn.penalty
                puts @players[0].summary
                puts "================"
                counter +=1
            else
                turn = Turn.new
                puts "It's #{@players[1].name}'s turn."
                turn.play
                @players[1].points += turn.points
                @players[1].lives += turn.penalty
                puts @players[1].summary
                puts "================"
                counter +=1
            end
        end

        puts "Game Over!"
        for guy in @players do
            if guy.lives > 0
                puts "#{guy.name} is Victorious!!!"
                @winningScore = guy.points
            end
        end

    end

end