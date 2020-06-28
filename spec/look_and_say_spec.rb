require 'look_and_say'

RSpec.describe "LookAndSay::LookAndSay" do

	before(:all) do

		@number = LookAndSay::LookAndSay.new

		@three_sequences = [
			1,
			11,
			21
		]

		@six_sequences = [
			1,
			11,
			21,
			1211,
			111221,
			312211
		]

		@seven_sequences = [
			1,
			11,
			21,
			1211,
			111221,
			312211,
			13112221
		]

	end

	after(:all) do
	end

  describe ".look_and_say" do

  	context "when sequence_count is not given" do
	
	      it "should return @six_sequences array" do
					@number.look_and_say(6)
					expect(@number.numbers).to eq(@six_sequences)
	      end

	  end

  	context "when sequence_count is equal to 3" do
	
	      it "should return @three_sequences array" do
					@number.look_and_say(3)
					expect(@number.numbers).to eq(@three_sequences)
	      end

	  end

  	context "when sequence_count is equal to 6" do
	
	      it "should return @six_sequences array" do
					@number.look_and_say(6)
					expect(@number.numbers).to eq(@six_sequences)
	      end

	  end

  	context "when sequence_count is equal to 7" do
	
	      it "should return @seven_sequences array" do
					@number.look_and_say(7)
					expect(@number.numbers).to eq(@seven_sequences)
	      end

	  end

	end

end
