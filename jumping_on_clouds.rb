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
