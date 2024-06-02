defmodule SimpleProductsJb.Repo.Migrations.AddCategoriesTable do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :description, :string
      add :image_url, :string
    end
  end
end
