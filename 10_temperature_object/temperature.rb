class Temperature
  def initialize(degree)
    @degree = degree
  end

  def to_fahrenheit
     if @degree[:f]
      @degree[:f]
    else 
      (9.0/5.0)*(@degree[:c])+32
    end
  end

  # this method will starts with either
   # celsius OR
   # fahrenheight

  # and convert it to...celsius
  def to_celsius

    # if i am starting with celsius
    if @degree[:c]
      @degree[:c]
    else
      # if i am starting with fahrenheit
    ((@degree[:f])-32)*(5.0/9.0)

    end
  end

  # the goal of this is to make a new Temperature instance (object)
  # configure d for celsius.
  def self.in_celsius(celsius)
    Temperature.new({:c => celsius})
  end

  # the goal of this is to make a new Temperature configured
  # for fahrenheit
  def self.in_fahrenheit(fahrenheit)
    Temperature.new({:f => fahrenheit})
  end
end

class Celsius < Temperature
  
  def initialize(celsius)
     super({:c => celsius})
  end
end

class Fahrenheit < Temperature

  def initialize(fahrenheit)
    super({:f => fahrenheit})
  end
end


# #Temperature.new({:f => 32}).to_fahrenheit
# Temperature.new({:c => 50}).to_celsius