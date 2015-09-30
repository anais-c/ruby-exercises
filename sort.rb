
def word_sorting(sentence)
    sentence_array = sentence.split(/\W+/)

    sentence_array.sort_by{|word| word.downcase}       
end

sentence = "Sun is shining, but summer ended. Yes, I am going to bed, but latter than I wanted."
puts word_sorting(sentence)