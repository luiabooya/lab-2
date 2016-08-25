def valid_date?(year, month, day)
    (month == 1 and day >0 and day <32) or
    (month == 2 and day >0 and day <29) or
    (month == 2 and day >0 and day <30 and year%4 == 0) or # modulo (%) is returning remainder from year/4
    (month == 3 and day >0 and day <32) or
    (month == 4 and day >0 and day <31) or
    (month == 5 and day >0 and day <32) or
    (month == 6 and day >0 and day <31) or
    (month == 7 and day >0 and day <32) or
    (month == 8 and day >0 and day <32) or
    (month == 9 and day >0 and day <31) or
    (month == 10 and day >0 and day <32) or
    (month == 11 and day >0 and day <31) or
    (month == 12 and day >0 and day <32)
end

# Tests
puts valid_date?(2013, 1, 29) # => true
puts valid_date?(2013, 2, 28) # => true
puts valid_date?(2013, 2, 29) # => false
puts valid_date?(2014, 2, 29) # => false
puts valid_date?(2014, 9, 29) # => true
puts valid_date?(2014, 9, 31) # => false
puts valid_date?(2013, 12, 31) # => true
puts valid_date?(2013, 12, 32) # => false
puts valid_date?(2013, 13, 31) # => false
puts valid_date?("2014", "Jan", 31) # => false
puts valid_date?(2016, 2, 29) # => true
puts valid_date?(2017, 2, 29) # => false
puts 2017%4 # => 1 (remainder 1)