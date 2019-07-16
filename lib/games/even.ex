defmodule Games.Even do
	  require Integer
  def play() do
    question = :rand.uniform(100)
    correct_answer = if Integer.is_even(question), do: "yes", else: "no"
    make_game_data(question, correct_answer)
  end
  # возвращает кортеж с параметрами игры
  defp make_game_data(question, correct_answer) do
    {question, correct_answer}
  end
  
  def get_task() do
  	IO.puts("Answer 'yes' if number even otherwise answer 'no'.")
  end
end
