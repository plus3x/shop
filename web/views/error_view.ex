defmodule Shop.ErrorView do
  use Shop.Web, :view

  @spec render(keyword, any) :: keyword
  def render("404.html", _assigns) do
    "Page not found"
  end

  @spec render(keyword, any) :: keyword
  def render("500.html", _assigns) do
    "Internal server error"
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  @spec template_not_found(any, any) :: any
  def template_not_found(_template, assigns) do
    render "500.html", assigns
  end
end
