class Master < Player
	attr_accessor :name, :code, :color_box


	def initialize(name = "Computer", code = [0,0,0,0])
		super(name, code)
	end

	def is_computer?
		super
	end

	def color_box
		super
	end

	def has_color?(guess)
		check_color(guess)
	end

	def right_spot(guess)
		check_spot(guess)
	end

	def computer_right_color(computer_guess)
		computer_check_color(computer_guess)
	end

	def name
		@name
	end

	def get_master_code(status)
		if status == "game_over" 
			return master_code
		end
	end


	private

	def master_code
		@code
	end

	def computer_check_color(computer_guess)
		right = []
		computer_guess.each { |x| @code.any?(x) ? right.push(x) : "" }
		puts "RIGHT: #{right}"
		right
	end

	def check_color(guess)
		i = 0
		guess.each { |x| @code.any?(x) ? i += 1 : i }
		i
	end

	def check_spot(guess)
		i = 0
		guess.each_with_index do |x, index|
			@code[index] == x ? i += 1 : i
		end
		i
	end

	def randomize(code)
		super
	end

end