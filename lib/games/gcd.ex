defmodule Games.Gcd do
  require Integer

  def play() do
    num1 = :rand.uniform(50)
    num2 = :rand.uniform(50)
    question = "#{num1}, #{num2}"
    correct_answer = Integer.gcd(num1, num2)
    make_game_data(question, "#{correct_answer}")
  end
  # возвращает кортеж с параметрами игры
  defp make_game_data(question, correct_answer) do
    {question, correct_answer}
  end
  
  def get_task() do
  	IO.puts("What is the result of the expression?")
  end
end