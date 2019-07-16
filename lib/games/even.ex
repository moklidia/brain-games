defmodule Games.Even do
	  require Integer
  def get_game_data() do
    question = :rand.uniform(100)
    correct_answer = if Integer.is_even(question), do: "yes", else: "no"
    make_game_data(question, correct_answer)
  end
  # returns a tuple with game params
  defp make_game_data(question, correct_answer) do
    {question, correct_answer}
  end
  
  def get_task() do
  	IO.puts("Answer \'yes\' if number is even otherwise answer \'no\'.")
  end

  def get_module_name do
    
  end
end
