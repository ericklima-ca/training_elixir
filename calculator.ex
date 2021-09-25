defmodule Calculator do
  @moduledoc """
  Define a calculator module and functions to execute it.
  """
  @doc """
  Start the system to process some result.
  """
  def start() do
    erick = %Student{name: "Erick Amorim", results: build_subjects([4.5, 5.9, 9.9, 7.1])}
    samara = %Student{name: "Samara Amorim", results: build_subjects([6.5, 7.8, 8.5, 10.0])}
    lima = %Student{name: "Lima Cristiano", results: build_subjects([10.0, 9.6, 8.6, 9.9])}
    joao = %Student{name: "João Pereira", results: build_subjects([5.5, 4.4, 2.2, 7.7])}
    mario = %Student{name: "Mário Silva", results: build_subjects([0.0, 1.9, 5.9, 8.5, 7.7])}
    result = calculate([erick, samara, lima, joao, mario])
    best = best_result(result)
    {result, best}
  end

  @doc """
  Get all students with their averages.
  ## Parameters
  - `students` - a list of Student structs.
  """
  defp calculate(students) do
    students
    |> Enum.map(
      &%{
        first_name: Student.first_name(&1),
        last_name: Student.last_name(&1),
        average: average(&1)
      }
    )
  end

  @doc """
  Calculate the average of a Student.
  ## Parameters
  - `student` - a Student struct.
  """
  defp average(student) do
    total = Enum.count(student.results)

    result =
      student.results
      |> Enum.map(& &1.result)
      |> Enum.reduce(&(&1 + &2))

    Float.ceil(result / total, 2)
  end

  @doc """
  Get the greater average.
  ## Parameter
  - `students` - a list of Student with their averages.
  """
  defp best_result(students) do
    best =
      students
      |> Enum.map(& &1.average)
      |> Enum.max()

    students
    |> Enum.filter(&(&1.average == best))
  end

  @doc """
  Build some results and some random results.
  ## Parameters
  - `results` - a list of results.
  """
  defp build_subjects(results) do
    subjects = ["Matemática", "Português", "Geografia", "História"]

    subjects
    |> Enum.map(&%Subject{name: &1, result: Enum.random(results)})
  end
end
