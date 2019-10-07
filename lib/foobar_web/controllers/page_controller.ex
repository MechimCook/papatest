defmodule FoobarWeb.PageController do
  use FoobarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def fizzbuzz(conn, params) do
    case params do
      %{"t" => "foo"} ->
        json(conn, %{message: "foo"})

      %{"t" => "bar"} ->
        json(conn, %{message: "bar"})

      %{"t" => "foobar"} ->
        json(conn, %{message: "foobar"})

      %{} ->
        json(conn, %{message: "no bars sent"})
    end
  end
end
