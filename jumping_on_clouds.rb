#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c)
#loop through array, if 1 skip 
#deermine minimum jumps?
skip =  0
    c.each do |cloud|
        if cloud == 1
            puts "cloud is Thundercloud"
            skip += 1
        else
            puts "cloud is cloud"
        end
    end
    puts "Total Thunderclouds ",skip
        puts "Total Cumulus clouds  ",c.size - (skip+1)

    return c.size - (skip+1) 
end
fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c

fptr.write result
fptr.write "\n"

fptr.close()


def jumpingOnClouds(c)
#get current position, check if cumulus
#Jump to the next cumulus cloud equal to the number of the current cloud plus 2.
#If Thundercloud, skip i.e of the current cloud plus 1. 

skip =  0
position = 0
n = gets.chomp.to_i
clouds = gets.chomp.split(' ').map(&:to_i)

    while position < n
          if clouds[position + 2] == 0
          position +=2
        else
            pos += 1        
        end
    skip += 1
    end
end