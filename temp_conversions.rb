# Prof H's Lab 2

def convert(temp, measure)
  return "Temperature must be an integer" unless temp.class == Fixnum
  return "Temperature below Absolute Zero" if below_absolute_zero?(temp,measure) == true
  if measure == "F"
    5 * (temp - 32)/9
  else
    9 * (temp)/5 + 32
  end
end

def below_absolute_zero?(temp,measure)
  (temp < -454 and measure == "F") or (temp < -270 and measure == "C")
end

# Fahrenheit conversions to Celsius
puts convert(32,"F")
puts convert(50,"F")
puts convert("zero","F")
puts convert(212,"F")
puts convert(-500,"F") 

# Celsius conversions to Fahrenheit
puts convert(0,"C")
puts convert(10,"C")
puts convert(100,"C")
puts convert(-280,"C")