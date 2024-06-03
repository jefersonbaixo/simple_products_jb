defmodule SimpleProductsJbWeb.UsersJSON do
  def login(%{token: token}) do
    %{
      message: "User logged in with success!",
      bearer: token
    }
  end
end
