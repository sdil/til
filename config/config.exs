# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :til,
  ecto_repos: [Til.Repo]

# Configures the endpoint
config :til, TilWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LU5vb0C/H4qLZhbTxiwCXuYzQy2tTYMvpMDQ+GwfLeJ5t+mgDEd8IFzwgTK3SqLe",
  render_errors: [view: TilWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Til.PubSub,
  live_view: [signing_salt: "hprQ6XVo"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :til, :pow,
  user: Til.Users.User,
  repo: Til.Repo

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
