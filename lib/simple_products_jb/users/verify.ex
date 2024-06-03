defmodule SimpleProductsJb.Users.Verify do
  alias SimpleProductsJb.Users

  def call(%{"email" => email, "password" => password}) do
    case Users.get(email) do
      {:ok, user} -> verify(user, password)
      {:error, _} -> {:error, :not_found}
    end
  end

  def call(_), do: {:error, :bad_request}

  defp verify(user, password) do
    case Argon2.verify_pass(password, user.password_hash) do
      true -> {:ok, user}
      false -> {:error, :unauthorized}
    end
  end
end
