def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word,n=2)
  sentence = []
  n.times do
    sentence << word
  end
  return sentence.join(" ")
end

def start_of_word (word,num)
  word[0,num]
end

def first_word(word)
  first = word.split(" ")
  first[0]
end

def titleize(word)
  if word.include?(" ")
      array = word.split
      array[0].capitalize!
      array.each do|name|
        if (name == "and") || (name =="over" )|| (name =="the")
        else
        name.capitalize!
        end
      end
      array.join(" ")
    else
      word.capitalize!
    end
end




