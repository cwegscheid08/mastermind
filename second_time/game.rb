class Game
	attr_accessor :board, :master, :breaker, :round, :correct_colors

	require "./board.rb"
	require "./player.rb"
	require "./master.rb"
	require "./breaker.rb"


	def initialize
		@round = 0
		@board = Board.new
		@correct_colors
		type = game_style?
		if type == "2p"
			x = get_master_info
			@master = Master.new(x[0], x[1])
			@breaker = Breaker.new(get_breaker_info)
			run_round("two_players")
		elsif type == "m"
			x =  get_master_info
			@master = Master.new(x[0],x[1])
			@breaker = Breaker.new
			run_round("master")
		else
			@master = Master.new
			@breaker = Breaker.new(get_breaker_info)
			run_round("breaker")
		end
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

	def run_round(round_style)
		case round_style
			when "breaker", "two_players"
				while @round <= 10
					@round += 1
					breaker_turn
					is_win?(round_style)
					is_loss?(round_style)
				end
			when "master"
				while @round <= 10
					@round += 1
					master_turn
					puts "\nTHE COMPUTER IS THINKING...\n\n" 
					sleep(1)
					@board.display
					is_win?(round_style)
					is_loss?(round_style)

				end
			else
				puts "ERROR!!!!"
		end
	end


	private


	def master_turn
		if @round <= 1
			guess = @breaker.computer_guess(@round)
			@board.add_to_board(@board.set_row(guess, master.has_color?(guess), master.right_spot(guess)), @round)
			@correct_colors = master.computer_right_color(guess)
		else
			guess = @breaker.computer_guess(@round)
			guess = breaker.smarter_guess(@correct_colors)
			@correct_colors = master.computer_right_color(guess)
			@board.add_to_board(@board.set_row(guess, master.has_color?(guess), master.right_spot(guess)), @round)
		end
	end

	def breaker_turn
		guess = @breaker.guess(@round)
		@board.add_to_board(@board.set_row(guess, master.has_color?(guess), master.right_spot(guess)), @round)
		@board.display
	end

	def is_loss? (round_style)
		if (@round == 10 && (board.four_spots?(@round) == false))
			if round_style != "master"	
				@round = 11 
				puts "\n#{master.name.upcase}'S CODE WAS #{master.get_master_code("game_over").join("--").upcase}\n\n~~YOU LOSE~~\n\n"
			else
				@round = 11
				3.times {puts "\n#{master.name.upcase} WINS!!!\n\n"}
			end	
		end
	end

	def is_win? (round_style)
		if board.four_spots?(@round) 
			if round_style != "master"	
				@round = 11
				3.times {puts "\n\n#{breaker.name.upcase} WINS!!!\n\n"}
			else
				@round = 11
				puts "\n\n               ~~~YOU LOSE~~~\n\n"
				phrase = "HAHAHAHAHA"*7	
				phrase += "!!!!!\n\n"
				puts "\n#{phrase*3}"
			end
		end
	end

	def game_style?
		puts "2 Player Mode: Y/N"
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