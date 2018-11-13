class Game
	attr_accessor :code_master, :code_breaker, :play
	require "./mastermind_board.rb"
	require "./code_breaker.rb"
	require "./code_master.rb"
	


	def initialize(code_master, code_breaker)
		@@code_master = CodeMaster.new(code_master)
		@@code_breaker = CodeBreaker.new(code_breaker)
		@@board = Board.new
	end

	def display
		puts @@board.display_board
		puts ""
		puts @@code_master.base_code
		puts @@code_breaker.compare_code
	end

end


play = Game.new("Chris", "Bry")
play.display