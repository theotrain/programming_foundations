VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "==> #{message}"
end

def display_results(player, computer)
  if player == computer
    prompt "It's a tie.  Whaaahh whaaaaaahhhhhhh."
  elsif (player == "rock" && computer == "scissors") ||
        (player == "paper" && computer == "rock") ||
        (player == "scissors" && computer == "paper")
    prompt 'You win!'
  else
    prompt 'You lose sucka!'
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample
  puts "You chose #{choice}, computer chose #{computer_choice}"
  display_results(choice, computer_choice)

  prompt 'Do you want to play again?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing!  Goodbye'
