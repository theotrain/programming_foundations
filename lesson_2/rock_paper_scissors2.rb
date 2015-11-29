THIS_BEATS_THAT = {'lizard' => ['Spock', 'paper'],
                    'rock' => ['lizard', 'scissors'],
                    'Spock' => ['scissors', 'rock'],
                    'paper' => ['Spock', 'rock'],
                    'scissors' => ['lizard', 'paper']}
VALID_CHOICES = THIS_BEATS_THAT.keys
POINTS_TO_WIN = 5
player_score = 0
computer_score = 0

def prompt(message)
  puts "==> #{message}"
end

def game_result(player, computer)
  if player == computer
    return 'tie'
  elsif THIS_BEATS_THAT[player].include?(computer)
    return 'win'
  else
    return 'lose'
  end
end

def display_winner(outcome)
  case outcome
  when 'tie'
    prompt "It's a tie."
  when 'win'
    prompt 'You win! Happy now?'
  else
    prompt 'You lose sucka!'
  end
end

def display_scores(player_score, computer_score)
  prompt "player has won: #{player_score}"
  prompt "computer has won: #{computer_score}"
end

def game_over?(player_score, computer_score)
  player_score >= POINTS_TO_WIN || computer_score >= POINTS_TO_WIN
end

def reset_scores
  player_score = 0
  computer_score = 0 
end

def display_end_game(outcome)
  case outcome
  when 'win'
    prompt "You got #{POINTS_TO_WIN} points and won the game"
  else
    prompt "The computer got #{POINTS_TO_WIN} points and won the game"
  end
end

def make_full_length(letter)
  VALID_CHOICES.each{|ch| return ch if ch[0] == letter}
  letter
end

loop do
  choice = ''
  loop do
    prompt "CHOOSE ONE: (r)ock (p)aper (s)cissors (S)pock (l)izard"
    choice = gets.chomp
    choice = make_full_length(choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice"
    end
  end

  computer_choice = VALID_CHOICES.sample
  puts "You chose #{choice}, computer chose #{computer_choice}"
  outcome = game_result(choice, computer_choice)
  display_winner(outcome)
  player_score += 1 if outcome == 'win'
  computer_score += 1 if outcome == 'lose'
  display_scores(player_score, computer_score)
  if game_over?(player_score, computer_score)
    display_end_game(outcome)
    player_score = 0
    computer_score = 0
  end
  prompt 'Do you want to play again?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing!  Goodbye'


