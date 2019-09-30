class Bank
    def initialize
        @num_acc = 0
        @accounts = Hash.new
    end

    def add_acc(id)
        @num_acc += 1
        @accounts[id] = Account.new(id)
    end

    def deposit(id, amt)
        @accounts[id].deposit(amt)
    end

    def withdraw(id, amt)
        @accounts[id].withdraw(amt)
    end

    def to_s
        output = "Total No. of Accounts: #{@num_acc}\n"
        @accounts.each do |id, balance|
            output += "\nAccount No.#{id} contains  #{balance}"
        end
        return output
    end
end