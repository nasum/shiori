defmodule ShioriWeb.PageController do
  use ShioriWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
