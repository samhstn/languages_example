defmodule LanguagesExampleWeb.SetLocale do
  import Plug.Conn
  import Gettext

  def init(opts), do: opts

  def call(%{req_headers: req_headers} = conn, _opts) do
    case get_session(conn, :lang) do
      nil ->
        {"accept-language", langs} = Enum.find req_headers, fn {k, _v} -> k == "accept-language" end

        langs
        |> String.split(",")
        |> Enum.map(&(&1 |> String.split(";") |> List.first))
        |> Enum.find(&(&1 in known_locales(LanguagesExampleWeb.Gettext)))
        |> case do
          nil ->
            conn
          lang ->
            put_locale lang
            conn
        end
      lang ->
        put_locale lang
        conn
    end
  end
end
