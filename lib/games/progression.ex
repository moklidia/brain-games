defmodule Games.Progression do
  @progression_length 10

  def generate_game_data() do
    progression = generate_progression()
    correct_answer = Enum.random(progression)
    correct_index = Enum.find_index(progression, fn x -> x === correct_answer end)
    question = List.replace_at(progression, correct_index, "..")
    make_game_data(Enum.join(question, " "), "#{correct_answer}")
  end
  # returns a tuple with game params
  defp make_game_data(question, correct_answer) do
    {question, correct_answer}
  end
  
  def get_task() do
  	IO.puts("What number is missing in this progression?")
  end

  def generate_progression() do
    initial = :rand.uniform(50)
    step = :rand.uniform(10)
    generate_progression(step, _count = 1, initial, _result = [initial])
  end
  def generate_progression(_step, count, _last, final) when count >= @progression_length do
    Enum.reverse(final)
  end
  def generate_progression(step, count, last, result) do
    next_number = last + step
    progression = [next_number | result]
    generate_progression(step, count + 1, next_number, progression)
  end

end