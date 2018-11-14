class Game
	attr_accessor :master, :code_breaker, :play, :code, :colors_box
	require "./code_master.rb"
	require "./code_breaker.rb"
	require "./board.rb"
	
	# require "./methods.rb"


	def initialize(master, code, code_breaker)
		# @@code_master
		@@color_box = color
		@@master = CodeMaster.new(master, code, @@color_box)
		@code_breaker = CodeBreaker.new(code_breaker)
		@board = Board.new
		
	end

	def color
		return ["red", "orange", "yellow", "green", "blue", "purple"]
	end

	def breaker_guess
		print @@color_box.join(", "), "\n"
		puts "Give me 4 colors."
		return guess = gets.chomp.split(" ")
	end

	def run_round
		@@master.compare_code(breaker_guess)
	end







	def display
		# load "./methods.rb"

		@board.display_board
		puts ""
		puts @@master
		@@master.display
		# puts @@color_box
		# puts @@code_breaker.compare_code
		# puts [1,2,3].rand_under_6.to_s
	end

	def play
		self.display
		self.run_round
	end

end




puts "Give me your name."
# name = gets.chomp
name = "Chris"
puts "Give me four numbers under 9."
# code = gets.chomp
code = [0,0,0,0]

new_game = Game.new(name, code, "Bry")
new_game.play

