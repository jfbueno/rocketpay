defmodule RocketpayWeb.UsersView do
  alias Rocketpay.{Account, User}

  def render("create.json", %{
      user: %User{id: id, name: name, username: username, account: %Account{id: account_id, balance: balance}}
    }) do
    %{
      message: "User created",
      user: %{
        id: id,
        name: name,
        username: username,
        account: %{
          id: account_id,
          balance: balance
        }
      }
    }
  end
end
