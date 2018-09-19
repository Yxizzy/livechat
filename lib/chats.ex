defmodule Chats do

  def mongo do
  {:ok, conn} = Mongo.start_link(url: "mongodb://localhost:27017/live-chat")
  # Gets an enumerable cursor for the results
  cursor = Mongo.find(conn, "room", %{})

  cursor
  |> Enum.to_list()
  |> IO.inspect
  end
end
