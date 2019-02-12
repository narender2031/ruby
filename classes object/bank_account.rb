class BankAccount
    attr_reader :name
    def initialize(name)
        @name = name
        @transactions = []
        add_transecation("beginning_balence", 0)
    end

    def credit(description, amount)
        # transection goes to the add_transection method
        add_transecation(description, amount)
    end

    def debit(description, amount)
        # transection goes to the add_transection method
        add_transecation(description, -amount)
    end

    def add_transecation(description, amount)
        @transactions.push(description: description, amount: amount)
    end

    def balence
        balence = 0 
        @transactions.each do |transection|
            balence += transection[:amount]
        end
        return balence
    end

    def to_s
        "Name: #{name}, Blance: #{sprintf("%0.2f", balence)}"
    end

    def print_register
        puts "#{name}'s Bank Account"
        puts "Description\t\t Amount"
        @transactions.each do |transaction|
            puts transaction[:description] + "\t\t" + sprintf("%0.2f", transaction[:amount])
        end
        puts "Balence: #{sprintf("%0.2f", balence)}"
    end
end

bank_account = BankAccount.new("Manu")
bank_account.credit("Payback", 100)
bank_account.debit("Grocercies", 40)

puts bank_account.print_register