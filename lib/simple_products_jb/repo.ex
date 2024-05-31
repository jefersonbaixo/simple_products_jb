defmodule SimpleProductsJb.Repo do
  use Ecto.Repo,
    otp_app: :simple_products_jb,
    adapter: Ecto.Adapters.Postgres
end
