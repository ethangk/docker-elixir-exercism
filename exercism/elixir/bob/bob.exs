defmodule Bob do
  def hey(input) do
    cond do
        is_empty?(input) -> "Fine. Be that way!"
        is_question?(input) -> "Sure."
        is_shouting?(input) -> "Whoa, chill out!"
        true -> "Whatever."
    end
  end

  def is_shouting?(input) do
    filteredInputLength = input
                            |> to_charlist
                            |> Enum.filter(&(&1 > 122 || &1 < 97))
                            |> length
    String.length(input) == filteredInputLength
  end

  def is_empty?(input) do
    input |> String.strip |> String.length == 0
  end

  def is_question?(input) do
    input |> String.ends_with?("?")
  end
end
