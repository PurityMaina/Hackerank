#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)

#find valley and mountain
#Sea level is 0 — Also the starting level
#S = Descriptive string that is the path of steps Gary the hiker takes
#U and D are “Up” and “Down” respectively and the direction of Gary’s step
#N = number of steps between 2 and 10⁶ (1,000,000)
steps = 0
valleys = 0

	unles n.nil? n.each do |step|
		if step == 'D' 
		    puts "I am a valley"
		    steps -=1
		elsif step == 'U'
		    puts "I am a mountain" 
		    steps +=1
		end
	end
		puts "Weuuuhhh My steps are",steps
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

fptr.write result
fptr.write "\n"

fptr.close()
