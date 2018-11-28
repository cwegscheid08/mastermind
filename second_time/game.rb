class Game
	attr_accessor :board, :master, :breaker

	require "./board.rb"
	require "./player.rb"
	require "./master.rb"
	require "./breaker.rb"


	def initialize
		# new_board = Board.new
		if two_players?
			x = get_player_info
			@master = Master.new(x[0], x[1])
			x = get_player_info
			@breaker = Breaker.new(x[0], x[1])
		else
			x = get_player_info
			@master = Master.new
			@breaker = Breaker.new(x[0], x[1])
		end
		
		@master.display_player
		@breaker.display_player
	end

	def two_players?
		puts "2 Player Mode: Y/N"
		return gets.chomp.downcase[0] == "y" ? true : false
	end

	def get_player_info
		puts "What's your name?"
		name = gets.chomp.downcase.capitalize
		puts "Give me four colors"
		code = gets.chomp.downcase
		puts "HERE: #{name}"
		return [name, code]
	end

end

new_game = Game.new