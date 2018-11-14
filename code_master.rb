class CodeMaster
	attr_accessor :name
	attr_reader :code


	def initialize(name, code)
		@code = code
		@name = name
	end

	def base_code
		return "Goodbye"
	end

	def display
		print @name, " ", @code, " ", "In code_master\n" 
	end

end

