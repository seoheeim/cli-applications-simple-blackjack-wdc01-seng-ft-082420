def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(0..11)
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}.  Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
end

def hit?(current_total)
  prompt_user
  get_user_input
  if user_input == "h".downcase
    new_draw = deal_card
    card_total = current_total + new_draw 
  end
  if user_input == "s".downcase
    card_total = current_total
  end
  else
    invalid_command 
  end
end

def invalid_command
  if user_input != h.downcase || s.downcase
    puts "Please enter a valid command."
  end 
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
