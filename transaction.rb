class Transaction
    def initialize(id, amt)
        @id = id
        @amt = amt
    end

    def pos?(amt)
        amt > 0
    end
end