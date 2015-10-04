puts "The exercise"
# The exercise
(1..100).each do |num|
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num  
  end      
end

puts "-------------- Iteration 2"

# Iteration 2
for num in (1..100)
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num  
  end      
end  

puts "--------------Iteration 3"

# Iteration 3

final = []

(1..100).each do |num|  

  if num % 3 == 0 && num % 5 == 0
    item = "FizzBuzz"
  elsif num % 3 == 0
    item = "Fizz"
  elsif num % 5 == 0
    item = "Buzz"   
  else
    item = num.to_s
  end  

  if num.to_s[0] == "1"  
    item += "Bang"
  end

  final << item
end

puts final     

puts "-------------- Iteration 4"

# Iteration 4 
(1..100).each do |num|

  result = ""

    if num % 3 == 0 && num % 5 == 0
      result << "Fizzbuzz" 
    elsif  num % 3 == 0
      result << "Fizz"
    elsif num % 5 == 0
      result << "Buzz"
    else
      result << num.to_s
    end 

    puts result
end





