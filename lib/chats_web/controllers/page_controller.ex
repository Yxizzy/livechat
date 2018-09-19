defmodule ChatsWeb.PageController do
  use ChatsWeb, :controller

  def index(conn, _params) do
    cursor = Mongo.find(conn, "room", %{})

    cursor
    |> Enum.to_list()
    |> IO.inspect
    render conn, "index.html"
  end
end
