defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def hello(conn, _params) do
    render(conn, :hello, name: name_to_greet())
  end

  def name_to_greet() do
    Application.fetch_env!(:hello, __MODULE__) |> Keyword.fetch!(:name_to_greet)
  end
end
