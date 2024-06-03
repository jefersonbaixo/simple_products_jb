defmodule SimpleProductsJb.Users.Create do
  alias SimpleProductsJb.Repo
  alias SimpleProductsJb.Users.User

  def call(params) do
    User.changeset(params)
    |> Repo.insert()
  end
end
