defmodule LanguagesExampleWeb.PageController do
  use LanguagesExampleWeb, :controller
  import Gettext

  def index(conn, _params) do
    render conn, "index.html"
  end

  def create(conn, %{"lang" => lang}) do
    conn = put_session conn, :lang, lang
    put_locale lang

    render conn, "index.html"
  end
end
