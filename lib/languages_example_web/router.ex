defmodule LanguagesExampleWeb.Router do
  use LanguagesExampleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :all do
    plug LanguagesExampleWeb.SetLocale
  end

  scope "/", LanguagesExampleWeb do
    pipe_through [:browser, :all]

    get "/", PageController, :index
    post "/", PageController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", LanguagesExampleWeb do
  #   pipe_through :api
  # end
end
