require_relative 'caesar_cipher'

describe CaesarCipher do

	before :all do 
		@cipher = CaesarCipher.new("string", 3)
	end

	describe "#new" do
		it "takes two parameters and returns a CaesarCipher object" do
			@cipher.should(be_an_instance_of(CaesarCipher))
		end
	end

	describe "#encode" do
		it "returns a string of letters displaced by the given shift" do
			@cipher.encode.should(eql("vwulqj"))
		end
	end

	describe "#to_num_arr" do
		it "takes one parameter and converts a string to an array of ascii numbers" do 
			@cipher.to_num_arr("string").should(eql([115, 116, 114, 105, 110, 103]))
		end
	end

	describe "shift_num" do 
		it "takes two parameters and returns an array of numbers that have been displaced by a given amount" do
			@cipher.shift_num([115, 116, 114, 105, 110, 103], 5).should(eql([120, 121, 119, 110, 115, 108]))
		end
	end
end