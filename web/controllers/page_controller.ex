defmodule Hotels.PageController do
  use Hotels.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
