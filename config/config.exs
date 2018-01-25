# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :languages_example,
  ecto_repos: [LanguagesExample.Repo]

# Configures the endpoint
config :languages_example, LanguagesExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zpt3Dd7hwu1GYDAxGFoeXWITDXBkA5uyGRrwt6bqAaUtoSEMfOHAD61S3T1pimCw",
  render_errors: [view: LanguagesExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LanguagesExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
