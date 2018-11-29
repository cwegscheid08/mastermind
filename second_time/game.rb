class Game
	attr_accessor :board, :master, :breaker, :round

	require "./board.rb"
	require "./player.rb"
	require "./master.rb"
	require "./breaker.rb"


	def initialize
		@round = 0
		@board = Board.new
		if two_players?
			x = get_master_info
			@master = Master.new(x[0], x[1])
			x = get_breaker_info
			@breaker = Breaker.new(x[0], x[1])
		else
			# x = get_breaker_info
			@master = Master.new
			@breaker = Breaker.new(get_breaker_info)
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

	def round
		@round
	end

	def run_round
		# while @round <= 10
			@round += 1
			turn(@round)
		# end
	end


	private

	def turn(round)
		guess = @breaker.guess
		# puts "YOUR GUESS: #{guess}   RIGHT COLOR: #{master.has_color?(guess)}  RIGHT SPOT: #{master.right_spot(guess)}"
		@board.add_to_board(@board.set_row(guess, master.has_color?(guess), master.right_spot(guess)), round)
	end

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
		return name
	end

end

# new_game = Game.new