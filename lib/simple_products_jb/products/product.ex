defmodule SimpleProductsJb.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "product" do
    field :name, :string
    field :price, :float
    field :description, :string
  end

  def changeset(product, params \\ %{}) do
    product
    |> cast(params, [:name, :price, :description])
    |> validate_required([:name, :price, :description])
  end
end
