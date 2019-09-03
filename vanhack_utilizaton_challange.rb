#!/bin/ruby

require 'json'
require 'stringio'



#
# Complete the 'finalInstances' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER instances
#  2. INTEGER_ARRAY averageUtil
#

averageUtil = [1,3,5,10,80]
instances = 2

def finalInstances(instances, averageUtil)
  # Write your code here
  averageUtil.each do |instances, utilization|
    if utilization > 60
    #if average-utilization is greater than 60, double utilization
        current_instance = instances*2
        puts "My utilization is greater than 60", current_instance
    elsif utilization < 25
    #if average-utilization isless than 25, half the utilization if instances are greater than 1
        current_instance = instances/2
        puts "My utilization is less than 25", current_instance
    else
        current_instance = instances
        puts "My utilization is not within the given range", current_instance
    end
  end
    puts "Current instances are ",current_instance
    return current_instance
end

instances = gets.strip.to_i

averageUtil_count = gets.strip.to_i

averageUtil = Array.new(averageUtil_count)

averageUtil_count.times do |i|
    averageUtil_item = gets.strip.to_i
    averageUtil[i] = averageUtil_item
end

result = finalInstances instances, averageUtil

fptr.write result
fptr.write "\n"

fptr.close()
