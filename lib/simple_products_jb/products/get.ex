defmodule SimpleProductsJb.Products.Get do
  alias SimpleProductsJb.Repo
  alias SimpleProductsJb.Products.Product

  def call() do
    case Repo.all(Product) do
      [] -> {:error, :no_product_fount}
      products -> {:ok, Repo.preload(products, :category)}
    end
  end
end
