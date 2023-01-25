def judge(user_hand, computer_hand) # refactor the result judgement to a method
  # compare user response with the computer's hand
  if computer_hand == user_hand
    return "draw"
  elsif (user_hand == "scissors" && computer_hand == "paper") || (user_hand == "rock" && computer_hand == "scissors") || (user_hand == "paper" && computer_hand == "rock")
    return "win"
  else
    return "lost"
  end
end


# The actual match starts here
hands = ["rock", "paper", "scissors"]
available_options = hands.push('quit') # user's inputs are valid if it was one of ["rock", "paper", "scissors", "quit"]
user_hand = '' # initialize to start the loop

until user_hand == "quit"
  user_hand = '' # this initialize is for after 2nd input (without this, it will enter into infinite loop from line 28)

  # Ask for input until the user types one of ['rock', 'paper', 'scissors', 'quit']
  until available_options.include?(user_hand)
    # ask for user imput, user types, rock paper scissors
    puts "Choose rock paper scissors or quit"
    user_hand = gets.chomp.downcase # just in case user puts Quit or something
  end

  # play and print out the result, only when user decides to play
  unless user_hand == 'quit'
    # select a random hand from the array
    computer_hand = hands.sample
    result = judge(user_hand, computer_hand)
    puts "You chose #{user_hand}, computer chose #{computer_hand}"
    puts "You #{result}!!"
  end
end
