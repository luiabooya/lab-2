# Prof H's Lab 2

def convert(temp)
  return "Temperature must be an integer" unless temp.class == Fixnum
  return "Temperature below Absolute Zero" if temp < -474
  5 * (temp - 32)/9
end

puts convert(32)
puts convert(50)
puts convert("zero")
puts convert(212)
puts convert(-500)