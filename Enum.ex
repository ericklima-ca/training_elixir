# capture operator (&)
Enum.map([1,2,3], fn number -> number + 3 end)
#[4, 5, 6]
Enum.map([1,2,3], &(&1 + 3))
#[4, 5, 6]

plus_three = &(&1 + 3)
Enum.map([1,2,3], plus_three)
#[4, 5, 6]

# capture operator in defmodule and function
defmodule Adding do
  def plus_three(number), do: number + 3
end

Enum.map([1,2,3], fn number -> Adding.plus_three(number) end)
#[4, 5, 6]

Enum.map([1,2,3], &Adding.plus_three(&1))
#[4, 5, 6]

Enum.map([1,2,3], &Adding.plus_three/1)
#[4, 5, 6]
