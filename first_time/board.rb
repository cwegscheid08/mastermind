class Board
	attr_accessor :board, :row, :switch, :round

	def initialize(round)
		@round = round
		@board = build_board
		@switch = false
	end

	def build_board
		@board = {}
		@row = {}
		i = 0


		while i < 6 do 
			if i < 1
				@row["R Guess"] = 0
			elsif i >= 5
				@row["R Place"] = 0
			else
				@row[i] = " "
			end
			
			i += 1
		end

		@board["ROUND:#{@round}"] = @row

		
		@board
	end

	def update_round round
		@round = round
	end

	def update_board x
		# @board[1][1] = "Hello"
		# print "\n", x, "\n", @round, "\n", @row, "\n", @board[@round][1], "\n", @board[1]["R Guess"]
		# puts ""
		# puts x.class == Integer
		# print "Here's the round:#{@round}- Here's the board: #{@board}.\n"

		if x.class != Integer
			# r = @board[round]
			# print "#{r[1]}.\n"
			puts "HERE'S X: #{x.to_s}, ROUND: #{@round}"
			i = 1
			working = @board
			x.each { |clr| @row[i] = clr; i += 1}
			# x.each { |clr| (@board[@round][i] = clr; i += 1)}
			working.each { |r| puts "WORKING:#{r}\nBOARD:#{@board} "}
			@board[@round] = @board
			puts @board
			i = 1
		else
			if @switch == true
				@row["R Place"] = x
				@switch = false
			else
				@row["R Guess"] = x
				@switch = true
			end
		end
		# @board[@round][1] = "Hello"
	end


	def display_board

		puts @board

		@board.each do |x| 
			x = x[1]
			# print "#{x}\n" 
			x.each { |y| print "#{y.join('-')}     "}
			puts " "
		end
		# puts @board.to_s, @round
	end

end

