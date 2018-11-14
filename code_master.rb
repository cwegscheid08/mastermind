class CodeMaster 
	attr_accessor :master, :color_box
	attr_reader :code


	def initialize(master, code, color_box)
		@master = master
		@@color_box = color_box
		@code = get_colors(randomize(code))
	end

	def get_colors code
		code.each_with_index do |x, i|
			code[i] = @@color_box[x]	
		end
	end

	def randomize code
		load './methods.rb'
		return code.rand_under_6
	end

	def display
		print @master, " ", @code, " ", "In code_master\n" 
	end


	def compare_code(guess)
		# print guess, "\n", @code, "\n"
		guess.each do |b_clr|
			print @code.any? { |m_clr| m_clr == b_clr }
		end
		puts ""
	end



	private

	def code_vault(code)
		@code = code
	end
end

