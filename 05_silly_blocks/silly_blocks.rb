def reverser
  new_array = []
  result = ''

  if yield.include?(" ")
    yield_array = yield.split(" ")
      yield_array.each do |word|
        new_array << word.reverse
        result = new_array.join(" ")
      end
      else
     result = yield.reverse 
  end
    result
end

def adder(v=1)
  yield + v
end

def repeater(n=1)
  n.times{yield}
end