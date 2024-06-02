defmodule SimpleProductsJbWeb.ProductsJSON do
  alias SimpleProductsJb.Products.Product

  def index(%{products: products}), do: Enum.map(products, &data/1)

  defp data(%Product{} = product) do
    IO.inspect(product)

    %{
      id: product.id,
      name: product.name,
      price: product.price,
      description: product.description,
      category: %{
        id: product.category.id,
        name: product.category.name
      },
      image_url: product.category.image_url
    }
  end
end
