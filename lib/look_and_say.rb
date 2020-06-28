require "look_and_say/version"

module LookAndSay
  class Error < StandardError; end

	class LookAndSay
		attr_reader :numbers

		def initialize(first_number=1)
			@first_number = first_number.to_s
			@numbers = []
		end
	
		def look_and_say(sequence_count)
			generate_sequence(validate_sequence_count(sequence_count))
			display_sequence
		end
	
		private
	
			def generate_sequence(sequence_count)
				number = @first_number
				@numbers = []
				sequence_count.times do
					@numbers.push(number.to_i)
					digit_count = 0
					current_digit = number[0]
					temp_number = ""
		
					number.split("").each do |digit|
		
						if current_digit == digit
							digit_count +=1
						else
							temp_number += digit_count.to_s + current_digit
							current_digit = digit
							digit_count = 1
						end
		
					end
					temp_number += digit_count.to_s + current_digit
					number = temp_number
				end
			end
	
			def validate_sequence_count(sequence_count)
				return 6 if sequence_count == ""
				return 6 if sequence_count.nil? || sequence_count == 0
	    	sequence_count = sequence_count.to_i
	    	sequence_count.positive? ? sequence_count : 6
	    	sequence_count <= 20 ? sequence_count : 6
			end
	
			def display_sequence
				@numbers.each do |number|
					puts number.to_s + "\n"
				end
			end
	
	end

end
