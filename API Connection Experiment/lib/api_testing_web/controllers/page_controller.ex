defmodule ApiTestingWeb.PageController do
  use ApiTestingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
