def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board,index)
  if index.between?(0, 8) && !position_taken?(board,index)
      true
  else
    false
  end
end

def position_taken?(board,index)
  
  if board[index] == " " || board[index] == "" || board[index] == nil
   false
 
  else board[index] == "X"||"O"
    true
    
 end
  
end

def input_to_index(user_input)
    output=user_input.to_i - 1
    return output
end


def move(board,index,character="X")
  board[index]=character
  return board
end

def turn(board)
  
  puts "Please enter 1-9:"
    user_input = gets.chomp.strip
    index=input_to_index(user_input)
  
  if valid_move?(board,index)
    true
    move(board,index)
    display_board(board)
  else 
    until valid_move?(board,index)
    turn(board)
   end 
  end
end


