defmodule Learning do
  @moduledoc """
  Documentation for Learning.
  """

  alias Learning.{
    ModuleA,
    ModuleB,
    Tax
  }

  @doc """
  Hello world.

  ## Examples

      iex> Learning.hello()
      "I'm called from base mix app module Learning."

  """

  def hello do
    "I'm called from base mix app module Learning."
  end

  def hello(:a) do
    ModuleA.function_a()
  end

  def hello(:b) do
    ModuleB.function_a()
  end

  def persional_tax(salary, taxrate) do
    Tax.persional_tax(salary, taxrate)
  end

  # Call this in iex like so:
  # > Learning.hello()
  def hello(func) when is_function(func) do
    func.()
  end
end
