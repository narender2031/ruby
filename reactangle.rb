# ruby methods
def reactangle(width, length)
    width.to_i * length.to_i
end

def get_value
    puts "Enter the Width"
    width =  gets
    puts "Enter the Length"
    length = gets
    puts  "Your area is: ",  reactangle(width, length)
end
get_value

