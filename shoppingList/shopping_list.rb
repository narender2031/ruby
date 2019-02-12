def welcome
    puts "HEllo! How can i help you ?"
    puts "Press A to create shop List"
    puts "Press Q to quit"
    answer = gets.chomp
    answer(answer)
end

def answer(answer)
    if answer.upcase == "A"
        puts "Lest! create your shoppig List"
        list_name = gets.chomp
        create_list(list_name)
    elsif answer.upcase == "Q"
        puts "Thanks for visit! come again"
    else
        puts "You choose wrong"
        welcome
    end
end

def create_list(list_name)
   puts "Your List Name is #{list_name}"
   @list = {name: list_name, items: []}
   items
end

def items
    puts "Add your Items !"
    item_name = gets.chomp
    puts "Enter the Qunatity"
    item_quantity = gets.chomp
    item = {name: item_name, quantity: item_quantity}
    @list[:items] << item
    puts "Add more item Press M or C for print "
    answer = gets.chomp
    if answer.upcase == "M"
     items   
    elsif answer.upcase == "C"
     print_lits(@list)
    end
end



def print_lits(list)
    puts "List: #{list[:name]}"
    puts "--------------------------------------------"
    list[:items].each  do |item|
    puts  "Item: " + item[:name] + "\t\t  Quantity: " + item[:quantity]
    end
    puts "--------------------------------------------"
    puts "Press M for main menu and Q to quit"
    answer = gets.chomp
    move(answer)
end

def move(answer)
    if answer.upcase == "M"
        welcome  
    elsif answer.upcase == "Q"
    else
        puts "wrong choice"
        welcome
    end
end

welcome
