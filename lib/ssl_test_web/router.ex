defmodule SslTestWeb.Router do
  use SslTestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SslTestWeb do
    pipe_through :api

    get "/hello", HelloSSLController, :hello
  end
end
