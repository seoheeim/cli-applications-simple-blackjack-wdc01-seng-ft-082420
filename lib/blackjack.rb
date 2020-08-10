def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  gets rand(1..11)
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
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first =  deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
end

def hit?(current_total)
  prompt_user
  get_user_input
  if get_user_input == "h".downcase
    new_draw = deal_card
    card_total = current_total + new_draw 
    
  elsif get_user_input == "s".downcase
    card_total = current_total

  else
    invalid_command 
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  display_card_total
  while display_card_total < 21 do 
    hit?
  end 
end_game
  
end
    
