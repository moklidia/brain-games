defmodule Even do
  def play() do
    question = :rand.uniform(100)
    correctAnswer = if even?(question), do: "yes", else: "no"
     # возвращает кортеж с параметрами игры
     make_game_data(question, correctAnswer)
  end

  def make_game_data(question, correctAnswer) do
    {question, correctAnswer}
  end
  
  def get_task() do
  	IO.puts("Answer 'yes' if number even otherwise answer 'no'.")
  end
  # checks if a given number is even
  def even?(num) do
    rem(num, 2) === 0
  end
end
