defmodule SimpleProductsJb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SimpleProductsJbWeb.Telemetry,
      SimpleProductsJb.Repo,
      {DNSCluster, query: Application.get_env(:simple_products_jb, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: SimpleProductsJb.PubSub},
      # Start a worker by calling: SimpleProductsJb.Worker.start_link(arg)
      # {SimpleProductsJb.Worker, arg},
      # Start to serve requests, typically the last entry
      SimpleProductsJbWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SimpleProductsJb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SimpleProductsJbWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
