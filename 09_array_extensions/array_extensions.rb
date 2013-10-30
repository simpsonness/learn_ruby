class Array

  def sum
    a = 0
    self.each do |num|
      a+=num
    end
    a
  end

  def square
    a = 0
    self.map { |num| num**2}
  end
  
  def square!
    a = 0
    self.map! { |num| num**2}
  end
end