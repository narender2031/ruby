def add(first, secound)
    # return first + secound
    first + secound
end

def minus(first, secound)
    # return first - secound
    first - secound
end

puts add(20, 30)
puts minus(30,20)

puts add(add(1,2), 4)
puts add(3, subtract(11,2))

# last expersission in the method is the retuen value 
# return does not give us any return 
# if method return any value you need to use puts in calling method