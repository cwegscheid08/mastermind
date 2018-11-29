class Game
	attr_accessor :board, :master, :breaker, :round

	require "./board.rb"
	require "./player.rb"
	require "./master.rb"
	require "./breaker.rb"


	def initialize
		@round = 1
		@board = Board.new
		if two_players?
			x = get_master_info
			@master = Master.new(x[0], x[1])
			x = get_breaker_info
			@breaker = Breaker.new(x[0], x[1])
		else
			x = get_breaker_info
			@master = Master.new
			@breaker = Breaker.new(x[0], x[1])
		end
		run_round
	end

	def master
		@master
	end

	def breaker
		@breaker
	end 

	def board
		@board
	end

	def run_round
		@breaker.guess
	end


	private


	def two_players?
		puts "2 Player Mode: Y/N"
		return gets.chomp.downcase[0] == "y" ? true : false
	end

	def get_master_info
		puts "You're the CodeMaster. What's your name?"
		name = gets.chomp.downcase.capitalize
		puts "Give me your Master Code."
		code = gets.chomp.downcase
		return [name, code]
	end

	def get_breaker_info
		puts "What's your name?"
		name = gets.chomp.downcase.capitalize
		puts "Give me four colors"
		code = gets.chomp.downcase
		puts "HERE: #{name}"
		return [name, code]
	end

end

# new_game = Game.new