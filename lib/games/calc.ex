defmodule Games.Calc do

  def play() do
    num1 = :rand.uniform(30)
    num2 = :rand.uniform(30)
    operators = ["+", "-", "*"]
    operator = Enum.random(operators)
    question = "#{num1} #{operator} #{num2}"
    correct_answer = case operator do
      "+" -> num1 + num2
      "-" -> num1 - num2
      "*" -> num1 * num2
    end
    make_game_data(question, "#{correct_answer}")
  end
  # returns a tuple with game params
  defp make_game_data(question, correct_answer) do
    {question, correct_answer}
  end
  
  def get_task() do
  	IO.puts("Find the greatest common divisor of given numbers")
  end
end