# random number guessing game
# generate random number (1 to 100), get input from user 'guess', compare guess to random
# number, tet user know if guess is right, too high or too low, loop through more than one guess,
# need contingency for non number guesses

puts "I've generated a random number for you to guess, what is your guess?"
print ">"
guess = $stdin.gets.chomp
guess_number = guess.to_i

number = 8

if guess_number == number
  puts "You got it, well done!"
elsif guess_number > number
  puts "Too high"
elsif guess_number < number
  puts "Too Low"
else
  puts "I don't even know what's happening here. %s, really?" %guess_number
end
