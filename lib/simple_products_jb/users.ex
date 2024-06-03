defmodule SimpleProductsJb.Users do
  alias SimpleProductsJb.Users.Verify
  alias SimpleProductsJb.Users.Get

  defdelegate get(id), to: Get, as: :call
  defdelegate login(params), to: Verify, as: :call
end
