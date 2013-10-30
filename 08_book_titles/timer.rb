class Timer
  attr_accessor :seconds
  
  def initialize(seconds=0)
    @seconds=seconds
  end

  def time_string
    if @seconds == 0
      "00:00:00"
    else
      time_array=[]
      string=""
      time_array<<(seconds/3600).to_s
      time_array<<((seconds % 3600)/60).to_s
      time_array<<((seconds % 3600)%60).to_s
      array=time_array.map{|item| item.size == 1 ? "0"+item : item}
      array.each do |item|
        string+=item
        string+=":" unless array.last == item
      end
      string
    end
  end
end