class Account
    def initialize(id)
      @id = id
      @balance = 0.0
    end

    def deposit(amount)
        @balance += amount
    end

    def withdraw(amount)
        @balance += amount
    end

    def to_s
        return "#{@balance.round(2)}\n"
    end
end