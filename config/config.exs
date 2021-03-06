# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chats,
  ecto_repos: [Chats.Repo]

# Configures the endpoint
config :chats, ChatsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zUn33FVbkYrmoy9eIO/YnkzWDCYoHoEzek6f7+FEP/P/ycj6QD4opeGO/Rf/FMNr",
  render_errors: [view: ChatsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chats.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
