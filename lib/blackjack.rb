def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
card_total = 0
card_1 = deal_card
card_2 = deal_card
sum = card_1 + card_2
display_card_total(sum)
end

def hit?(number)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
   card = deal_card
   card_total = card + number
   card_total
    elsif input == "s"
      number
        else
         invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
welcome
total = initial_round
until total >= 21 do
  total = hit?(total)
end
  display_card_total(total)
  end_game(total)

end
