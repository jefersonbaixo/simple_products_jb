defmodule SimpleProductsJbWeb.WelcomeController do
  use SimpleProductsJbWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Welcome to Simple Products", status: :ok})
  end
end
