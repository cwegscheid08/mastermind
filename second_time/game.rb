class Game
	attr_accessor :board, :master, :breaker, :round

	require "./board.rb"
	require "./player.rb"
	require "./master.rb"
	require "./breaker.rb"


	def initialize
		@round = 0
		@board = Board.new
		if game_style == "2p"
			x = get_master_info
			@master = Master.new(x[0], x[1])
			@breaker = Breaker.new(get_breaker_info)
			run_round("two_players")
		elsif game_style == "m"
			x =  get_master_info
			@master = Master.new(x[0],x[1])
			@breaker = Breaker.new
			run_round("master")
		else
			@master = Master.new
			@breaker = Breaker.new(get_breaker_info)
			run_round("breaker")
		end
		# run_round
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

	# def round
	# 	@round
	# end

	def run_round(game_style)
		while @round <= 10
			@round += 1
			turn(@round)
			is_win?(@round)
			is_loss?
		end
	end


	private

	def turn(round)
		guess = @breaker.guess(round)
		@board.add_to_board(@board.set_row(guess, master.has_color?(guess), master.right_spot(guess)), round)
		@board.display
	end

	def is_loss?
		if (@round == 10 && (board.four_spots?(@round) == false))
			@round = 11 
			loss = true 
			puts "\n#{master.name.upcase}'S CODE WAS #{master.get_master_code(loss).join("--").upcase}\n\n~~YOU LOSE~~\n\n"
		end
	end

	def is_win?(round)
		board.four_spots?(round) ? (@round = 11; 3.times {puts "\n#{breaker.name.upcase} WINS!!!\n"}; puts "") : ""
	end

	def game_style
		puts "2 Player Mode: Y/N"
		# return gets.chomp.downcase[0] == "y" ? true : false
		if gets.chomp.downcase[0] == "n"
			puts "Would you like to be BREAKER or MASTER?"
			return gets.chomp.downcase[0]
		else
			return "2p"
		end
	end

	def get_master_info
		puts "You're the CodeMaster. What's your name?"
		name = gets.chomp.downcase.capitalize
		puts "Give me your Master Code."
		code = gets.chomp.downcase.split(" ")
		return [name, code]
	end

	def get_breaker_info
		puts "You're the CodeBreaker. What's your name?"
		name = gets.chomp.downcase.capitalize
		return name
	end

end

new_game = Game.new