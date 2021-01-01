# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :shiori,
  ecto_repos: [Shiori.Repo]

# Configures the endpoint
config :shiori, ShioriWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tSbuLcasvput1V+JPl/D6ky8ewvBNrUPF69J//3kNydNjzajcCZTwvEw/lI92boo",
  render_errors: [view: ShioriWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Shiori.PubSub,
  live_view: [signing_salt: "RG4Cr8B4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
