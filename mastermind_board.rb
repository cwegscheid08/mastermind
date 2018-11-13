class Board
	attr_accessor :board, :row

	def initialize
		@board = build_board
	end

	def build_board
		@board = {}
		@row = {}
		i = 0


		while i <= 6 do 
			if i < 1
				@row["R Guess"] = 0
			elsif i > 5
				@row["R Place"] = 0
			else
				@row[i] = " "
			end
			
			i += 1
		end

		10.times do |x|
			@board[x+1] = @row
		end

		@board
	end

	def display_board
		@board.each { |x| puts x }
	end

end

