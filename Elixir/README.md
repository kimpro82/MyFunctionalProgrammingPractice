# [My Elixir Practice](../README.md#my-elixir-practice)

["Elixir Saves Pinterest $2 Million a Year In Server Costs", Michael Lubas, 2023-08-28](https://paraxial.io/blog/elixir-savings)


### References

- https://elixir-lang.org/
- https://hexdocs.pm/elixir/introduction.html


### \<Note>

- Use *version 1.15.7* in [JDoodle](https://www.jdoodle.com/execute-elixir-online), unless otherwise specified


### \<List>

- [Fibonacci Sequence (2024.11.19)](#fibonacci-sequence-20241119)



## [Fibonacci Sequence (2024.11.19)](#list)

- Generate the Fibonacci sequence up to the specified number of terms
- Code and Output
  <details>
    <summary>Code : FibonacciSequence.ex</summary>

  ```elixir
  defmodule Fibonacci do
    @moduledoc """
    A module for generating and printing Fibonacci sequences.
    This module uses lazy evaluation for efficient sequence generation.

    ## Author : kimpro82
    ## Date   : 2024-11-19
    """

    @doc """
    Generates a Fibonacci sequence of the given length.
    """
    def generate(n) when n > 0 do
      # Use Stream.unfold to create an infinite Fibonacci sequence and take n elements
      Stream.unfold({1, 1}, fn {a, b} -> {a, {b, a + b}} end)
      |> Enum.take(n)
    end

    @doc """
    Generates and prints a Fibonacci sequence of the given length on a single line.
    """
    def print(n) do
      n
      |> generate()
      |> Enum.map(&Integer.to_string/1)  # Convert each number to a string
      |> Enum.join(" ")                  # Join the strings with space as separator
      |> IO.puts()                       # Print the result and automatically add a newline
    end
  end
  ```
  ```elixir
  # Usage example: Print the first 10 Fibonacci numbers
  Fibonacci.print(10)
  ```
  </details>
  <details open="">
    <summary>Output</summary>

  ```elixir
  1 1 2 3 5 8 13 21 34 55
  ```
  </details>
