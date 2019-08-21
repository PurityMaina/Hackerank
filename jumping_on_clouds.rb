#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c)
#get current position, check if cumulus
#Jump to the next cumulus cloud equal to the number of the current cloud plus 2.
#If Thundercloud, skip i.e of the current cloud plus 1. 
n = c.length
clouds = 0
pos = 0
jumps = 0
while pos < n
  if clouds[pos + 2] == 0
    pos += 2
  else
    pos += 1
  end
  jumps += 1
end
return jumps
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c

fptr.write result
fptr.write "\n"

fptr.close()
