
# First Iteration
def solve_cipher(input)
  
  letters = input.split('')
  numbers = []
  
  letters.each do |letter|
    if letter == "a"
      numbers << "z".ord
    else
      numbers << letter.ord - 1
    end
  end

  unencrypted = []

  numbers.each do |num|
    unencrypted << num.chr
  end

  unencrypted
end

puts solve_cipher("ifmmpa")
# should return "helloz"

puts "_______________________________"

# Second Iteration
def solve_cipher(input)
  
  characters = input.scan(/./)
  numbers = []
  
  characters.each do |letter|
    if ("b".."z").include?(letter)
      numbers << letter.ord - 1
    elsif letter == "a"
      numbers << "z".ord
    else
      numbers << letter  
    end  
  end  

  unencrypted = []

  numbers.each do |num| 
    if (97..122).include?(num)
      unencrypted << num.chr
    else
      unencrypted << num
    end
  end  

  unencrypted
end

puts solve_cipher("ifmmpa. gmpxfs,")
