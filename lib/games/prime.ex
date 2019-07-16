defmodule Games.Prime do
  def generate_game_data() do
    question = :rand.uniform(100)
    correct_answer = if is_prime(_counter = 2, question), do: "yes", else: "no"
    make_game_data(question, correct_answer)
  end
  # returns a tuple with game params
  defp make_game_data(question, correct_answer) do
    {question, correct_answer}
  end
  
  def get_task() do
  	IO.puts("Answer \'yes\' if number is prime otherwise answer \'no\'.")
  end

  defp is_prime(_counter, num) when num < 2 do
    false
  end

  defp is_prime(counter, num) when counter <= div(num, 2) do
    cond do
      rem(num, counter) === 0 -> false
      rem(num, counter) > 0 -> is_prime(counter + 1, num)
    end
  end

  defp is_prime(_counter, _num) do
    true
  end
end