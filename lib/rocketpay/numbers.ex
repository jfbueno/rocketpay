defmodule Rocketpay.Numbers do
  def sum_from_csv(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, file}) do
    result =
      file
      |> String.split(",")
      |> Enum.map(fn strNum -> String.to_integer(strNum) end)
      |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handle_file({:error, _reason}), do: {:error, %{ message: "Invalid file" }}
end
