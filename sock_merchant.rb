#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
sock_colors = Hash.new { | hash, key | hash[key] = 0 }

ar.each { | color | sock_colors[color] += 1 }

pairs = 0
sock_colors.each_value { | sock_count | pairs += (sock_count / 2) }

puts pairs
return pairs

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

fptr.write result
fptr.write "\n"

fptr.close()
