%Charles Cullen 20334106 Battleship Assignment

replay=1;
while replay==1
    clc;
   
 %Create a Matrix of 10x10 zeros
 board = zeros(10,10);

 %Note: Line 25-220 are code for placing the ships randomly
 %The code will place the ships in a random location
 %It will randomly choose the ships orientation(Horizontal/Vertical)
 %The code will make sure the ships dont go off the board
 %The code will make sure the ships dont overlap
 

 %Placing the 1st ship (Submarine) of length 2
 
 
 %Choosing a random location for the ships starting point
 x_pos = round(rand*(9-1)+1);
 y_pos = round(rand*(9-1)+1);

 %Choosing the ships orientation(Horizontal/Vertical) randomly
 %Also mapping the ship onto the board

 Vert_Horiz = round(rand*(2-1)+1);

  if Vert_Horiz==1
    
        board(x_pos,y_pos)=2;
        board(x_pos+1,y_pos)=2;
   
  else
    
        board(x_pos,y_pos)=2;
        board(x_pos,y_pos+1)=2;

  end
  
 %Placing the second ship (Destroyer 1) of length 3

 %Choosing a random location for the ships starting point    
 x_pos = round(rand*(8-1)+1);
 y_pos = round(rand*(8-1)+1);

 %Choosing the ships orientation(Horizontal/Vertical) randomly
 %Also mapping the ship onto the board
 Vert_Horiz = round(rand*(2-1)+1);

 %Ensuring ther is no ship overlap
  if Vert_Horiz==1
    
        %Making sure there is no other ship already here
        while board(x_pos,y_pos)~=0||board(x_pos+1,y_pos)~=0||board(x_pos+2,y_pos)~=0

        x_pos = round(rand*(8-1)+1);
        y_pos = round(rand*(8-1)+1);
    
        end
        
              board(x_pos,y_pos)=31;
              board(x_pos+1,y_pos)=31;
              board(x_pos+2,y_pos)=31;
     
  else
    
          %Making sure there is no other ship already here
           while board(x_pos,y_pos)~=0||board(x_pos,y_pos+1)~=0||board(x_pos,y_pos+2)~=0

        x_pos = round(rand*(8-1)+1);
        y_pos = round(rand*(8-1)+1);
    
        end
    
              board(x_pos,y_pos)=31;
              board(x_pos,y_pos+1)=31;
              board(x_pos,y_pos+2)=31;

  end

 % This set of code is repeated for each individual ship
 % In each case the ship is placed randomly onto the board 
 % While always ensuring that no ship overlaps
 
 %Placing the third ship of length 3

 %Choosing a random location for the ships starting point    
 x_pos = round(rand*(8-1)+1);
 y_pos = round(rand*(8-1)+1);

 %Choosing the ships orientation(Horizontal/Vertical) randomly
 %Also mapping the ship onto the board
 Vert_Horiz = round(rand*(2-1)+1);

    if Vert_Horiz==1
    
           %Making sure there is no other ship already here
           while board(x_pos,y_pos)~=0||board(x_pos+1,y_pos)~=0||board(x_pos+2,y_pos)~=0

        x_pos = round(rand*(8-1)+1);
        y_pos = round(rand*(8-1)+1);
    
           end
               board(x_pos,y_pos)=32;
               board(x_pos+1,y_pos)=32;
               board(x_pos+2,y_pos)=32;

    else
    
           %Making sure there is no other ship already here
           while board(x_pos,y_pos)~=0||board(x_pos,y_pos+1)~=0||board(x_pos,y_pos+2)~=0

        x_pos = round(rand*(8-1)+1);
        y_pos = round(rand*(8-1)+1);
    
           end
               board(x_pos,y_pos)=32;
               board(x_pos,y_pos+1)=32;
               board(x_pos,y_pos+2)=32;
    end

 %//////////////////////////////////////////////////////////////////////////

 %Placing the fourth ship (Battleship) of length 4

 %Choosing a random location for the ships starting point
 x_pos = round(rand*(7-1)+1);
 y_pos = round(rand*(7-1)+1);

 %Choosing the ships orientation(Horizontal/Vertical) randomly
 %Also mapping the ship onto the board
 Vert_Horiz = round(rand*(2-1)+1);

  if Vert_Horiz==1
    
         %Making sure there is no other ship already here
         while board(x_pos,y_pos)~=0||board(x_pos+1,y_pos)~=0||board(x_pos+2,y_pos)~=0||board(x_pos+3,y_pos)~=0

        x_pos = round(rand*(7-1)+1);
        y_pos = round(rand*(7-1)+1);
    
         end
               board(x_pos,y_pos)=4;
               board(x_pos+1,y_pos)=4;
               board(x_pos+2,y_pos)=4;
               board(x_pos+3,y_pos)=4;

  else
    
        %Making sure there is no other ship already here
        while board(x_pos,y_pos)~=0||board(x_pos,y_pos+1)~=0||board(x_pos,y_pos+2)~=0||board(x_pos,y_pos+3)~=0

        x_pos = round(rand*(7-1)+1);
        y_pos = round(rand*(7-1)+1);
    
        end
              board(x_pos,y_pos)=4;
              board(x_pos,y_pos+1)=4;
              board(x_pos,y_pos+2)=4;
              board(x_pos,y_pos+3)=4;

  end

 %Placing the fifth ship (Aircraft Carrier) of length 5

 %Choosing a random location for the ships starting point    
 x_pos = round(rand*(6-1)+1);
 y_pos = round(rand*(6-1)+1);

 %Choosing the ships orientation(Horizontal/Vertical) randomly
 %Also mapping the ship onto the board
 Vert_Horiz = round(rand*(2-1)+1);

   if Vert_Horiz==1
  
          %Making sure there is no other ship already here
          while board(x_pos,y_pos)~=0||board(x_pos+1,y_pos)~=0||board(x_pos+2,y_pos)~=0||board(x_pos+3,y_pos)~=0||board(x_pos+4,y_pos)~=0

        x_pos = round(rand*(6-1)+1);
        y_pos = round(rand*(6-1)+1);
    
          end
                board(x_pos,y_pos)=5;
                board(x_pos+1,y_pos)=5;
                board(x_pos+2,y_pos)=5;
                board(x_pos+3,y_pos)=5;
                board(x_pos+4,y_pos)=5;
   else
    
          %Making sure there is no other ship already here
          while board(x_pos,y_pos)~=0||board(x_pos,y_pos+1)~=0||board(x_pos,y_pos+2)~=0||board(x_pos,y_pos+3)~=0||board(x_pos,y_pos+4)~=0

        x_pos = round(rand*(6-1)+1);
        y_pos = round(rand*(6-1)+1);
          end
                board(x_pos,y_pos)=5;
                board(x_pos,y_pos+1)=5;
                board(x_pos,y_pos+2)=5;
                board(x_pos,y_pos+3)=5;
                board(x_pos,y_pos+4)=5;
   end

 %Playing the battleship game
 
 %Guess counter starts at 0
 guess=0;

 %Explaining the game to the user
 disp('-----------------------------------------------------------------------')
 disp("Welcome to Charles Cullen's battleship game.")
 disp("There are 5 ships within the grid and your objective is to guess the")
 disp("co-ordinates of these ships in as little guesses as possible. On the")
 disp("grid a -1 indicates you have guessed here but missed, a 100 indicates")
 disp("you have guessed here and hit a boat and a 0 indicates unknown territory.")
 disp("You have 50 guesses , good luck.")
 disp('-----------------------------------------------------------------------')

 %Explaining how to input the grid refernece
 disp("The letters A-J represent rows 1-10 and the following digit represents")
 disp("the column. For example B6 would correlate to row 2 column 6.")
 disp('-----------------------------------------------------------------------')

 %Creating the users board
 playingboard = zeros(10,10);
 disp(playingboard)

 %The below while loops runs when there are ships still left on the board
 while ismember(2,board)||ismember(31,board)||ismember(32,board)||ismember(4,board)||ismember(5,board)

   %Letting the user know which ships are , or aren't left to be hit.
   if ismember(2,board)
       
      disp('-----------------------------------------------------------------------')
      disp('Status of ships:')
      disp('The Submarine of length 2 still needs to be sunk.')
      
   else 
       
      disp('-----------------------------------------------------------------------')
      disp('The Submarine of length 2 is at the bottom of the ocean.')
      
   end

   if ismember(31,board) 
      disp('Destroyer 1 of length 3 still needs to be sunk.')
      
   else 
      disp('Destroyer 1 of length 3 is at the bottom of the ocean.')
     
   end

   if ismember(32,board)
      disp('Destroyer 2 of length 3 still needs to be sunk.')
      
   else 
      disp('Destroyer 2 of length 3 is at the bottom of the ocean.')
  
   end

   if ismember(4,board)
      disp('The Battleship of length 4 still needs to be sunk.')
   
   else 
      disp('The Battleship of length 4 is at the bottom of the ocean.') 
   
   end

   if ismember(5,board)
       
      disp('The Aircraft Carrier of length 5 still needs to be sunk.')
      disp('-----------------------------------------------------------------------')
   
   else 
       
      disp('The Aircraft Carrier of length 5 is at the bottom of the ocean.')
      disp('-----------------------------------------------------------------------')
      
   end

 %Obtaining the guess from the user
 %Using a function to convert the guess to co-ordinates on the board
 %Function is at the end of the code

 GridReference= input("Please enter your grid reference: " , "s");
 [row,Column] = GridReference_To_Coordinates(GridReference);

 %If you reach guess #50 you will be brought to the end of the game
   if guess==50
       break
   
 %If your guess is a miss    
   elseif board(row,Column)==0
       
       disp('-----------------------------------------------------------------------')
       disp('MISS = -1')
       disp('-----------------------------------------------------------------------')
       board(row,Column)= -1;
       playingboard(row,Column)= -1;
       disp(playingboard)
    
       %Adding 1 to the guess counter and displaying guess number
       guess=guess+1;
       disp('-----------------------------------------------------------------------')
       fprintf('That was guess number %d\n',guess)
    
%If the guess has already been made    
   elseif playingboard(row,Column)==100 || board(row,Column)==-1
       
       disp('-----------------------------------------------------------------------')
       disp('You already tried here, this counts as another miss. Try again.')
       disp('-----------------------------------------------------------------------')
       disp(playingboard)
    
       %Adding 1 to the guess counter and displaying guess number
       guess=guess+1;
       disp('-----------------------------------------------------------------------')
       fprintf('That was guess number %d\n',guess)
    

%If your guess is a hit
   else
    
      disp('-----------------------------------------------------------------------')
      disp('100 = DIRECT HIT!')
      disp('-----------------------------------------------------------------------')
      board(row,Column)=100;
      playingboard(row,Column)=100;
      disp(playingboard)
   
      %Adding 1 to the guess counter and displaying guess number
      guess=guess+1;
      disp('-----------------------------------------------------------------------')
      fprintf('That was guess number %d\n',guess)
   end
   
 end

   %If you run out of guesses you lose
   if guess==50
       
      disp('-----------------------------------------------------------------------')
      disp('You have run out of guesses. Game over.')
   
   %If you have sunk all the ships you win    
   else
      disp('You have sunk all the ships.')
    
   %Return a score if you win
      score=117-guess;
      finalscore=sprintf('Your final score is %d',score);
      disp(finalscore)
   end

   %Do you want to replay the game?
   disp('-----------------------------------------------------------------------')
   replay=input('Play again? Enter 1 for yes or 0 for no: ');

end

%If the user decides not to play again
disp('-----------------------------------------------------------------------')
disp('Thanks for playing. Have a nice day.')

%Below is a function to convert a grid reference, eg.A4, to a column and
%row and in the case of the example it would be row 1 column 4.

function[row,Column] = GridReference_To_Coordinates(GridReference);

%The user can use either upper or lower case when inputting their grid ref.
letter = upper(GridReference(1));

%If you choose column 10
if length(GridReference)==3
    Column=10;
    
%If you choose column 1-9    
else
Column = str2num(GridReference(2));
end

%Changing the letters from the inputted grid ref. to row numbers
switch letter
  case "A"
    row=1;
  case "B"
    row=2;
  case "C"
    row=3;
  case "D"
    row=4;
  case "E"
    row=5;
  case "F"
    row=6;
  case "G"
    row=7;
  case "H"
    row=8;
  case "I"  
    row=9;
  case "J"
    row=10;
end

end



