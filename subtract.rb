def sunbract(first, secound)
    first - secound
end

number = 9
puts number 
(1..number).each do |index|
    number = sunbract(number, 1)
    puts number
end

# puts does not return any value
