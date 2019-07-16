defmodule Flow do
  def play_game(game_name) do
  	module_name = String.to_existing_atom("Elixir."<>"Games."<>game_name)
  	task = apply(module_name, :get_task, [])
    IO.puts("#{task}")
    user_name = ExPrompt.string("May I have your name? ")
    IO.puts("Hello " <> user_name)
    rounds_count = 3
    play_round(rounds_count, module_name, user_name)
  end

  defp play_round(rounds_count, module_name, user_name) when rounds_count > 0 do
    game_data = apply(module_name, :play, [])
    question = elem(game_data, 0)
    correct_answer = elem(game_data, 1)
    user_answer = ExPrompt.string("#{question} ")

    cond do
      user_answer === correct_answer ->
        IO.puts("Correct!")
        play_round(rounds_count - 1, module_name, user_name)

      user_answer !== correct_answer ->
        IO.puts("#{user_answer} is wrong answer ;(. Correct answer was #{correct_answer}.")
    end
  end

  defp play_round(rounds_count, module_name, user_name) do
  	IO.puts("Congratulations, #{user_name}")
  end
end
