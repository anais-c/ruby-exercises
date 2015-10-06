
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
# should return "hello"

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

puts "_______________________________"

# Third iteration
def solve_cipher(input, n)

  characters = input.scan(/./)
  numbers = []
  
  characters.each do |letter|
    if(letter.ord + n) > 122 
      x = (letter.ord + n) - 122
      number = 97 + x
    elsif (letter.ord + n) < 97 && (letter.ord + n) > 71
      x = 97 - (letter.ord + n)
      number = 122 - (x - 1)
    elsif letter.ord < 65
      number = letter
    else
      number = letter.ord + n  
    end  
    numbers << number
  end    

  decipher = []

  numbers.each do |num|
    if (97..122).include?(num)
      decipher << num.chr
    else
     decipher << num
    end
  end 

  puts decipher
end

solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)
