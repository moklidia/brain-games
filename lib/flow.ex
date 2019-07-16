defmodule Flow do
  def play_game(game_name) do
  	module_name = String.to_existing_atom("Elixir."<>game_name)
  	task = apply(module_name, :get_task, [])
    IO.puts("#{task}")
    user_name = ExPrompt.string("May I have your name? ")
    IO.puts("Hello " <> user_name)
    roundsCount = 3
    playRound(roundsCount, module_name, user_name)
  end

  def playRound(roundsCount, module_name, user_name) when roundsCount > 0 do
    game_data = apply(module_name, :play, [])
    question = elem(game_data, 0)
    correctAnswer = elem(game_data, 1)
    userAnswer = ExPrompt.string("#{question} ")

    cond do
      userAnswer === correctAnswer ->
        IO.puts("Correct!")
        playRound(roundsCount - 1, module_name, user_name)

      userAnswer !== correctAnswer ->
        IO.puts("#{userAnswer} is wrong answer ;(. Correct answer was #{correctAnswer}.")
    end
  end

  def playRound(roundsCount, module_name, user_name) do
  	IO.puts("Congratulations, #{user_name}")
  end
end
