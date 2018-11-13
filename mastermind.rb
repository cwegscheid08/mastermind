class Game
	attr_accessor :master, :code_breaker, :play, :code
	require "./mastermind_board.rb"
	require "./code_breaker.rb"
	require "./code_master.rb"
	


	def initialize(master, code, code_breaker)
		# @@code_master
		@@master = CodeMaster.new(master, code)
		@@code_breaker = CodeBreaker.new(code_breaker)
		@@board = Board.new
	end

	def display
		@@board.display_board
		puts ""
		puts @@master.display
		puts @@code_breaker.compare_code
	end

end




puts "Give me your name."
name = gets.chomp
puts "Give me four numbers under 9."
code = gets.chomp.to_i

play = Game.new(name, code, "Bry")
play.display
# name = CodeMaster.new(name, code)