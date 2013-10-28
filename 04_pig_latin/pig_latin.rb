def translate(word)
  vowels = ["a", "e", "i", "o", "u"]


  if vowels.include?(word[0])
    
    word = word<<"ay"

  else
    new_array=[]
    letter_array = word.split("")
    letter_array do |n|
    if !vowels.include?(n)
      #remove this letter from the word to array


      word = word<<n
      word = word<<"ay"
    else
      break
    end
  end
end
end

