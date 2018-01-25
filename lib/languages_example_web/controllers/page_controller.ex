defmodule LanguagesExampleWeb.PageController do
  use LanguagesExampleWeb, :controller
  import Gettext

  def index(conn, _params) do
    case lang = get_session(conn, :lang) do
      nil -> 
        render conn, "index.html", lang: lang
      _ -> 
        put_locale(LanguagesExampleWeb.Gettext, lang)
        render conn, "index.html", lang: lang
    end
  end

  def create(conn, %{"lang" => lang}) do
    put_session(conn, :lang, lang)

    Gettext.put_locale(Gettext, "de")

    render conn, "index.html", lang: lang
  end
end
