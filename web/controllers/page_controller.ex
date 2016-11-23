defmodule GDS.PageController do
  use GDS.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
