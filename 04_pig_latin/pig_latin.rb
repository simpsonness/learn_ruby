def translate(word)
  vowels = ["a", "e", "i", "o", "u"]


  # if vowels.include?(word[0])
    
  #   word = word<<"ay"

  # else
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
    
    a = temp.join("")
    b = letter_array.join("")
    together(a,b,c)
  end

def together(a,b,c)
 b+a+c 
end

translate("apple")
