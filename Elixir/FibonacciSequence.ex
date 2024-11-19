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

# Usage example: Print the first 10 Fibonacci numbers
Fibonacci.print(10)
