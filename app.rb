puts "Hello! The computer challenges you to a game of tic-tac-toe!"
#get player name and save it into a variable
puts "please enter your name"
player_name = gets.chomp.to_s
puts "Hello #{player_name }"

#create the board Array
board = [1,2,3,4,5,6,7,8,9]


#create the board 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#endgame logic
define_method :end_game do 
  i=0
  if board[0]=="x" && board[1] =="x"  && board[2] =="x"
    puts "You won #{player_name}!"
    exit
  elsif board[3]=="x" && board[4] =="x"  && board[5] =="x"
    puts "You won #{player_name}!"
    exit
    elsif board[6]=="x" && board[7] =="x"  && board[8] =="x"
    puts "You won #{player_name}!"
    exit
    elsif board[0]=="x" && board[3] =="x"  && board[6] =="x"
    puts "You won #{player_name}!"
    exit
      elsif board[1]=="x" && board[4] =="x"  && board[7] =="x"
    puts "You won #{player_name}!"
    exit
      elsif board[2]=="x" && board[5] =="x"  && board[8] =="x"
    puts "You won #{player_name}!"
    exit
      elsif board[0]=="x" && board[4] =="x"  && board[8] =="x"
    puts "You won #{player_name}!"
    exit
      elsif board[2]=="x" && board[4] =="x"  && board[6] =="x"
    puts "You won #{player_name}!"
    exit
elsif board[0]=="o" && board[1] =="o"  && board[2] =="o"
     puts "computer won!"
    exit
  elsif board[3]=="o" && board[4] =="o"  && board[5] =="o"
     puts "computer won!"
    exit
    elsif board[6]=="o" && board[7] =="o"  && board[8] =="o"
     puts "computer won!"
    exit
    elsif board[0]=="o" && board[3] =="o"  && board[6] =="o"
     puts "computer won!"
    exit
      elsif board[1]=="o" && board[4] =="o"  && board[7] =="o"
     puts "computer won!"
    exit
      elsif board[2]=="o" && board[5] =="o"  && board[8] =="o"
     puts "computer won!"
    exit
      elsif board[0]=="o" && board[4] =="o"  && board[8] =="o"
     puts "computer won!"
    exit
      elsif board[2]=="o" && board[4] =="o"  && board[6] =="o"
     puts "computer won!"
    exit
  else
    return
  end
end

#create a player Class

class Player

  def initialize(name, mark)
    @mark=mark
    @name=name 
  end
  def show_name
    puts @name
    return @mark
  end
  def return_mark
    return @mark
  end
end
#create player instance
player= Player.new(player_name, "x")
#create computer instance
computer= Player.new("computer", "o")
#display display_board
puts display_board(board)

player_mark= player.return_mark
#p "yes #{player_mark}"


#create computer move function
define_method :computer_move do 
  #remove all chosen parts from the array and put them into a new array
available_numbers= board.select {|item| item!="x" && item!="o"}
#let the computer choose from that new array
  index = rand (available_numbers[0]...available_numbers[-1])
  board[index]="o"
puts display_board(board)
end_game

player_move
end


#define player move function
define_method :player_move do 
  puts "Choose a number between 1 and 9"
index= gets.chomp.to_i
if index <0 || index >9
    puts "Please choose a number between 1 and 9"
    puts display_board(board)
      player_move
    
elsif board[index -1]=="x" || board[index -1]=="o"
    puts "You can't choose a taken place"
    puts display_board(board)
    player_move
elsif index > 0 && index< 9 || index!=0
    board[index -1]="x"
    puts display_board(board)
end_game
    computer_move
else
    puts "Choose a number between 1 and 9"
    puts display_board(board)
      player_move
end
puts display_board(board)

end

#call player move function on start
player_move




