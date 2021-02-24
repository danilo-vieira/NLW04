defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "should be able to sum all numbers from a file with given filename" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "should not be able to sum all numbers from a non existing file with given filename" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file"}}

      assert response == expected_response
    end
  end
end
