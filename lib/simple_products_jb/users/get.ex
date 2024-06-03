defmodule SimpleProductsJb.Users.Get do
  alias SimpleProductsJb.Repo
  alias SimpleProductsJb.Users.User

  def call(email) do
    case Repo.get_by(User, email: email) do
      [] -> {:error, :no_user_found}
      user -> {:ok, user}
    end
  end
end
