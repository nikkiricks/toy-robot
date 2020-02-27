require_relative 'Toyrobot'

puts "Enter placement and direction ex. PLACE 0,0,NORTH"
placement = gets.chomp
new_game = Toyrobot.new(placement)
new_game.input