def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  sum = card_one + card_two
  puts "Your cards add up to #{sum}"
  sum
end

def hit?(current_total)
  prompt_user
  user_input = get_user_input
  
  if user_input != 'h' && user_input != 's'
    invalid_command
    prompt_user 
    user_input = get_user_input 
    
  if user_input == 'h'
    new_draw = deal_card
    current_total += new_draw 
    
  elsif user_input == 's'
    current_total
    
  else
    current_total
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
end
    
