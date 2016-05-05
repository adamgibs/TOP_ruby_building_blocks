
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

def caesar_cipher(str, shift)
	a = to_num_arr(str)
	b = shift_num(a, shift)
	c = to_letter_str(b)

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

p caesar_cipher("Wow, that's crazy", 30)