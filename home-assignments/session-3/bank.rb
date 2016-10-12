# print_action method expects two parameters "action" and "amount"
def print_action(action, amount)
  puts "You've asked to #{action} an amount of #{amount}$. "
  puts "Performing your request..."
end
# Answer to question 7: Use meaningful names for every piece of code you write
balance = 100 + Random.rand(901)

print "Please enter your personal name:  "
name = gets.chomp.capitalize!

print "What action would you like to perform?  "
action = gets.chomp

if ( action != "view" && action != "deposit" && action != "withdraw" )
  raise "Action not allowed!"
end

if action != "view"
print "What amount would you like to #{action}?  "
amount = gets.to_i
end

if action == "withdraw"
  puts "Your balance is #{balance}$"
  balance -= amount
elsif action == "deposit"
  puts "Your balance is #{balance}$"
  balance += amount
end

if action == "view"
  puts "Your balance is #{balance}$"
else
  print_action(action, amount)
  puts "Hi #{name}, Your current balance was changed and is now: #{balance}$"  
end

# Bank home assignment
# ---------------------

# The above code imitates a simple withdrawal and deposit from a bank account with some credit balance.

# Please first go over each line and make sure you understand what each line does if not. Please go back to the class lecture and review it.

# There are some things you need to do with this code:

#   1. Run it! If it’s working, great! If it’s not, well, find out what is missing/wrong and fix it so it will run. (Continue to next missions only after the code is running)
#   2. As you can see the two available actions are “withdraw” & “deposit”. However, what if I’m only interested in viewing my account credit? Please add a third option called “view” that only prints out to the screen the current credit (the “amount” variable).
#   3. You can also notice that the actual “amount” variable is always set to a fixed number 20 (line 14). Let’s change it to a user input (like “action” and “name” variables do).
#   4. The “balance” variable (line 6) is also hard coded to 100. Find a way to always set it to a random number between 100 and 1000 when the program starts (Hint: Ruby already knows how to do this you don’t need to implement such a functionality).
#   5. Okay. now pay attention to the "balance" variable. There is no way to know what was the initial balance before the change. Please also print what was the previous balance in every place that you change it ("withdraw" and "deposit")
#   6. What happens when you input an unknown “action” like “stop” or “blabla”? I think this is unclear. Let’s raise an exception when an unclear action is being set as the “action” by the user input.
#   7. And finally a question: Why did I use the “print_action” method in this code? What principle out of the “coding practices for beginners” we’ve learned (see lecture notes) does it serve? Write the answer as a comment in the code.
