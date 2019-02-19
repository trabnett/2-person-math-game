require_relative './game'
require_relative './math'
require_relative './player'
require_relative './turn'

highscore = 0
game = Game.new

puts "Welcome to Math Frenzy! Press Enter to start"
gets.chomp

game.play

puts "Winning score #{game.winningScore}"



if "#{game.winningScore}" > "#{highscore}"
    highscore = game.winningScore
    8.times do
        print "=====!!!#{highscore}!!! New High Score!!! ====="
        sleep 0.5
      end
end