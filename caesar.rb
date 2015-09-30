def solve_cipher(input)
  letters = input.split("")
  
  numbers = []

  letters.each do |letter|

    if letter == "a"
      number = "z".ord
    else
      number = letter.ord - 1
    end

    numbers << number
  end

  unencrypted = []

  numbers.each do |num|

    unencryp = num.chr
    unencrypted << unencryp
  end
  
  unencrypted.join

end

puts solve_cipher("ifmmpa")
