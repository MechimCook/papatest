defmodule FoobarWeb.PageController do
  use FoobarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def fizzbuzz(conn, params) do
    case params do
      "foo" ->
        json(conn, %{message: "foo"})

      "bar" ->
        json(conn, %{message: "bar"})

      "foobar" ->
        json(conn, %{message: "foobar"})
    end
  end
end
