defmodule BrainGames do
  def main(_args) do
  	IO.puts("Welcome to the Brain Games!")
  	Dispatcher.choose_game()
  end
end
