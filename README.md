# LanguagesExample

### Example app with multiple languages configured with Gettext

See working example here: https://phoenix-languages-example.herokuapp.com/

The commit history explains how this project has been set up best.

### Functionality

A user can choose a language from the dropdown and all of the text with translations to that language will be translated.
This will last for the users browser session.

The site will also use the language preferred by the browser.
This can be tested by changing your language preferences in Chrome in:
`Settings > Advanced Settings > Languages`

### Quick Start

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
