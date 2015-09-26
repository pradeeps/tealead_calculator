# Playing RPS with Ruby
# Rock smashes Scissors, Paper covers Rock, Scissors cuts paper

puts 'Welcome to Rock, Paper, Scissors'
puts '--------------------------------'

CHOICES = { 'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors' }

def final_message(choice)
  case choice
  when 'p'
    puts 'Paper covers Rocks'
  when 'r'
    puts 'Rock smashes Scissors'
  when 's'
    puts 'Scissors cuts paper'
  end
end

loop do
  puts 'Please select (r)ock, (p)aper, (s)cissors'
  user_selection = gets.chomp
  until CHOICES.key?(user_selection)
    puts 'Invalid input, please enter a valid option '
    user_selection = gets.chomp
  end

  computer_selection = CHOICES.keys.sample

  if user_selection == computer_selection
    puts "Both of you selected #{user_selection}. Its a tie."
  elsif (user_selection == 'r' && computer_selection == 's') ||
        (user_selection == 's' && computer_selection == 'p') ||
        (user_selection == 'p' && computer_selection == 'r')
    puts "You've selected : #{user_selection}, computer selected : #{computer_selection}"
    final_message(user_selection)
    puts 'You Win'
  else
    puts "You've selected : #{user_selection}, computer selected : #{computer_selection}"
    final_message(computer_selection)
    puts 'Computer Won'
  end

  puts 'Do you want to play again? (Y/N)'
  break if gets.chomp.capitalize != 'Y'
end
