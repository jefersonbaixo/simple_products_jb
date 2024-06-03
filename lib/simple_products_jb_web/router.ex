defmodule SimpleProductsJbWeb.Router do
  use SimpleProductsJbWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :auth do
    plug SimpleProductsJbWeb.Plugs.Auth
  end

  scope "/api", SimpleProductsJbWeb do
    pipe_through :api

    get "/", WelcomeController, :index
    post "/users/login", UsersController, :login
  end

  scope "/api", SimpleProductsJbWeb do
    pipe_through [:api, :auth]

    get "/products", ProductsController, :index
  end

  # Enable LiveDashboard in development
  if Application.compile_env(:simple_products_jb, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through [:fetch_session, :protect_from_forgery]

      live_dashboard "/dashboard", metrics: SimpleProductsJbWeb.Telemetry
    end
  end
end
