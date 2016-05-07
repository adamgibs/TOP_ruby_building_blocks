
class CaesarCipher

	attr_accessor :shift, :string

	def initialize(string, shift)
		@string = string
		@shift = shift
	end


	def encode
		a = to_num_arr(string)
		b = shift_num(a, shift)
		c = to_letter_str(b)
		p c
	end

	
	def to_num_arr(string)
		string_arr = string.split("")
		num_arr = string_arr.map{|s| s.ord}
		num_arr
	end

	def shift_num(arr, shift)
		arr.map do |n| 
			if n.between?(65,90)
				upper_ascii_wrap(n + shift)
			elsif n.between?(97,122)
				lower_ascii_wrap(n + shift)
			else
				n
			end
		end
	end

	def to_letter_str(arr)
		arr.map{|n| n.chr}.join("")
	end


	def upper_ascii_wrap(num)
		until num.between?(65,90)
			 if num > 90
			 	num = (num - 90) + 65
			 elsif num < 65
			 	num = 90 - (65 - num)
			 end
		end
		num
	end

	def lower_ascii_wrap(num)
		until num.between?(97,122)
			 if num > 122
			 	num = (num - 122) + 97
			 elsif num < 97
			 	num = 122 - (97 - num)
			 end
		end
	 num
	end
end

gigi = CaesarCipher.new("string", 3)
p gigi.shift_num([115, 116, 114, 105, 110, 103], 5)