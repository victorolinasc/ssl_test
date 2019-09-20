defmodule SslTestWeb.HelloSSLController do
  use SslTestWeb, :controller

  def hello(conn, _params) do
    json(conn, %{hello: "world"})
  end
end
