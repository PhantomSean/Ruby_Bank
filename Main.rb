require_relative 'bank'
require_relative 'account'
require_relative 'transaction'

my_bank = Bank.new

f = File.open("accounts.txt")
f_acc_num = f.read.split("\n")

(0..f_acc_num.length-1).each { |i|
  my_bank.add_acc(f_acc_num[i])
}

f = File.open("transactions.txt")
f_lines = f.read.split("\n")

(0..f_lines.length-1).each { |i|
  f_vals = f_lines[i].split("\t")

  if Transaction.new(f_vals[0], f_vals[1]).pos?(f_vals[1].to_f)
      my_bank.deposit(f_vals[0], f_vals[1].to_f)
  else
      my_bank.withdraw(f_vals[0], f_vals[1].to_f)
  end
}

puts my_bank.to_s