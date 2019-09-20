defmodule SslTest.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      SslTestWeb.Endpoint,
      SslTestWeb.Endpoint2
    ]

    opts = [strategy: :one_for_one, name: SslTest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    SslTestWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
