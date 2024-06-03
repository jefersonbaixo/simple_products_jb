defmodule SimpleProductsJb.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset

  @required_params [:name, :password, :email]
  schema "users" do
    field :name, :string
    field :password, :string, virtual: true
    field :password_hash
    field :email, :string
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params)
    |> unique_constraint(:email)
    |> put_pass_hash()
  end

  defp put_pass_hash(%Changeset{valid?: true, changes: %{password: password}} = changeset) do
    put_change(changeset, :password_hash, Argon2.hash_pwd_salt(password))
  end

  defp put_pass_hash(changeset), do: changeset
end
