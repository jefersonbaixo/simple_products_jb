defmodule SimpleProductsJb.Categories.Category do
  use Ecto.Schema
  import Ecto.Changeset
  alias SimpleProductsJb.Products.Product

  schema "categories" do
    field :name, :string
    field :description, :string
    field :image_url, :string
    has_many :products, Product
  end

  def changeset(category, params \\ %{}) do
    category
    |> cast(params, [:name, :description])
    |> validate_required([:name, :description])
  end
end
