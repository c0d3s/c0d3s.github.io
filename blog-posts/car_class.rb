class Car
  def initialize(doors, transmission, sunroof = false)
    raise ArgumentError.new("Must select 2 or 4 doors") unless doors == 2 || doors = 4
    raise ArgumentError.new("Must select 'manual' or 'automatic' transmission") unless transmission == "manual" || transmission == "automatic"
    @doors = doors
    @transmission = transmission
    @sunroof = sunroof
  end 
  
  def get_style
    @doors = 2 ? style = "coupe" : style = "sedan"
    return "This car is a #{style}."
  end

  def get_mpg
    case @doors
    when 2
      @transmission == "manual" ? mpg = [29, 36] : mpg = [27, 34]
    when 4
      @transmission == "manual" ? mpg = [28, 35] : mpg =[26, 34]
    end
    return "The mpg of this car is #{mpg[0]} city and #{mpg[1]} highway."
  end

  def sunroof?
    @sunroof == true ? result = "This car has a sunroof" : result = "This car does not have a sunroof"
    return result
end