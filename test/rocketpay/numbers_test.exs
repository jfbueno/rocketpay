defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_csv/1" do
    test "When there's a file with the given name, returns the sum of the numbers in the file" do
      assert Numbers.sum_from_csv("numbers") == {:ok, %{result: 37}}
    end

    test "When there's no file with the given name, returns an error message" do
      assert Numbers.sum_from_csv("invalid-file") == {:error, %{message: "Invalid file"}}
    end
  end

end
