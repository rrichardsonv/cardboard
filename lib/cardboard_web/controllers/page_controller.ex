defmodule CardboardWeb.PageController do
  use CardboardWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
