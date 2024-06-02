defmodule SimpleProductsJb.Repo.Migrations.AddProductsTable do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :price, :float
      add :description, :string
      add :category_id, references(:categories, on_delete: :nothing)
    end

    create index(:products, [:category_id])
  end
end
