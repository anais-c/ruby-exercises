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

puts "--------------"

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

puts "--------------"

# Iteration 3
(1..100).each do |num|
  if num % 3 == 0 && num % 5 == 0
    if num.to_s[0] == "1"
      puts "FizzBuzzBang"
    else
      puts "FizzBuzz"
    end
  elsif num % 3 == 0
    if num.to_s[0] == "1"
      puts "FizzBang"
    else 
      puts "Fizz"
    end
  elsif num % 5 == 0
    if num.to_s[0] == "1"
      puts "BuzzBang"
    else
      puts "Buzz"
    end  
  else
    if num.to_s[0] == "1"
      puts num.to_s + "Bang"
    else
      puts num
    end
  end          
end        

puts "--------------"

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



