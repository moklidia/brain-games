defmodule BrainGames do
  def main(args) do
  	IO.puts("Welcome to the Brain Games!")
  	game_name = ExPrompt.string("Choose a game: Even, Prime, Calc, Gcd ")
    Flow.play_game(game_name)
  end
end
