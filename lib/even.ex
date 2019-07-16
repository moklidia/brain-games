defmodule Even do
  def play() do
    question = :rand.uniform(100)
    correct_answer = if even?(question), do: "yes", else: "no"
    make_game_data(question, correct_answer)
  end
  # возвращает кортеж с параметрами игры
  def make_game_data(question, correct_answer) do
    {question, correct_answer}
  end
  
  def get_task() do
  	IO.puts("Answer 'yes' if number even otherwise answer 'no'.")
  end
  # checks if a given number is even
  def even?(num) do
    rem(num, 2) === 0
  end
end
