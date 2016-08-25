# Prof H's Lab 2

def convert(temp, measure)
  return "Temperature must be an integer" unless temp.class == Fixnum
  return "Temperature below Absolute Zero" if temp < -474
  if measure == "F"
    5 * (temp - 32)/9
  else
    9 * (temp)/5 + 32
  end
end

# puts convert(32)
# puts convert(50)
# puts convert("zero")
# puts convert(212)
# puts convert(-500) 

puts convert(0,"C")
puts convert(10,"C")
puts convert(100,"C")
puts convert(-280,"C")