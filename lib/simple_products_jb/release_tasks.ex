defmodule SimpleProductsJb.ReleaseTasks do
  @app :simple_products_jb

  def seed do
    Application.ensure_all_started(@app)
    path = Application.app_dir(@app, "priv/repo/seeds.exs")
    Code.eval_file(path)
  end
end
