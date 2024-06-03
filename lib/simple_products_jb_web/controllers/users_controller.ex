defmodule SimpleProductsJbWeb.UsersController do
  use SimpleProductsJbWeb, :controller

  alias SimpleProductsJb.Users
  alias SimpleProductsJbWeb.Token

  action_fallback SimpleProductsJbWeb.FallbackController

  def login(conn, params) do
    with {:ok, user} <- Users.login(params) do
      token = Token.sign(user)

      conn
      |> put_status(:ok)
      |> render(:login, token: token)
    end
  end
end
