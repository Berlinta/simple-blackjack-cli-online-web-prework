def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  if n>21
    puts "Sorry, you hit 27. Thanks for playing!"
  end
end

def initial_round
  sum= deal_card + deal_card
    display_card_total(sum)
    return sum
  end
    
def hit?(curent_total)
  prompt_user
  input=get_user_input
  if input == 'h'
    curent_total+=deal_card
    elsif input == 's'
    return curent_total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  Welcome
  hand=initial_round
  until hand>21 do
    hand=hit?(hand)
    display_card_total(hand)
  end
end_game(hand)
end

