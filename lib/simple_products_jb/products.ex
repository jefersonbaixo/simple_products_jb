defmodule SimpleProductsJb.Products do
  alias SimpleProductsJb.Products.Get

  defdelegate all(), to: Get, as: :call
end
