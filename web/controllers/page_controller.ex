defmodule Shop.PageController do
  use Shop.Web, :controller

  @spec index(any, any) :: any
  def index(conn, _params) do
    render conn, "index.html"
  end
end
