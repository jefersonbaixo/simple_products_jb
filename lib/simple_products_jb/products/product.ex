defmodule SimpleProductsJb.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  alias SimpleProductsJb.Categories.Category

  schema "products" do
    field :name, :string
    field :price, :float
    field :description, :string
    belongs_to :category, Category
  end

  def changeset(product, params \\ %{}) do
    product
    |> cast(params, [:name, :price, :description])
    |> validate_required([:name, :price, :description])
    |> foreign_key_constraint(:category_id)
  end
end
