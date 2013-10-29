class Book

  attr_accessor :title

  def initialize
    @title = nil
  end

  def title
    little_words=%w(the a an and in of  )
    new_title_array = []
    title_array = @title.split
    title_array.each_with_index do |word, index|
      if little_words.include?(word)&& index > 0
        new_title_array << word
      else
        new_title_array << word.capitalize
      end
    end
    new_title_array.join(" ")
  end
end

  




