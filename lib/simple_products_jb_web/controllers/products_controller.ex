defmodule SimpleProductsJbWeb.ProductsController do
  use SimpleProductsJbWeb, :controller

  alias SimpleProductsJb.Products

  action_fallback SimpleProductsJbWeb.FallbackController

  def index(conn, _) do
    with {:ok, products} <- Products.all() do
      conn
      |> put_status(:ok)
      |> render(:index, products: products)
    end
  end
end
