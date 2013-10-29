def translate(word)
  if word.include?(" ")
    word_array = word.split(" ")
    new_word_array = []
    word_array.each do |x|
      new_word_array.push(single_word(x))
    end
    final_string = new_word_array.join(" ")
    



    #   if index > 0
    #     new_word += " "
    #   end
    #    new_word += single_word(w)
    #   end
    #   new_word
    # end
  else single_word(word)
  end
end



def single_word(word)
  vowels = ["a", "e", "i", "o"]


    temp=[]
    c = "ay"
    
    letter_array = word.split("")
    
    first = letter_array[0]
    begin
    
      unless vowels.include?(first)
        temp.push(first)
        letter_array.shift
       first = letter_array[0]
      end

    end while !vowels.include?(first)
    
    a = temp.join("") #not vowels
    b = letter_array.join("")
    together(a,b,c)
  end

def together(a,b,c)
 b+a+c 
end





 puts translate("apple cherry")