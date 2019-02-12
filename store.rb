puts "Welcome to the store"
puts "ENter the number of items you want to purches?"
@x = gets.to_i
 if @x < 50
  @total = @x * 10
 elsif @x >= 5 
    @total = @x * 9
elsif @x >= 1
    @total   = @x * 8
end
 puts "Your TOTAL Is:" + @total.to_s
    