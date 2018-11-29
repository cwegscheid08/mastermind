class Master < Player
	attr_accessor :name, :code, :color_box
	
	def initialize(name = "Comp", code = [0,0,0,0])	
		@name = name
		@code = code
		@color_box = color_box
		is_comp?()
	end

	def is_comp?
		@name == "Comp" ? @code = randomize(@code) : ""
	end

	def color_box
		super
	end

	def display_player
		super
	end


	private

	def randomize(code)
		code.each_with_index do |x, i|
			code[i] = @color_box[rand(5)]
		end
		code
	end

end