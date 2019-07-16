defmodule Dispatcher do
  # asks the user to input the number the game he wants to play
  def choose_game do
  	IO.puts(
  		"""
  		Choose a game:
  		  1. Brain-even 
  		  2. Brain-calc
  		  3. Brain-gcd 
  		  4. Brain-prime
  		"""
  		)
  	answer = IO.gets("Enter the game number > ")
  	value = String.first(answer)
	game_name = char_to_game_name(value)
    GameFlow.play_game(game_name)
  end

  # finds the corresponding game name
  def char_to_game_name(char) do
  	case char do
  		"1" -> "Even"
  		"2" -> "Calc"
  		"3" -> "Gcd"
  		"4" -> "Prime"
  	end
  end
end