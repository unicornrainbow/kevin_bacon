# Example App

This is a rails application running on a *postgres db*.

Loads actions from xml input into a data warehouse. Show's degrees of
separation between 2 actors.

# Install

    $ bundle install
    $ rake db:create db:migrate  # Db is postgres for heroku compatibility `brew install postgres` (Also need to create root user)

# Load xml data

    $ rake import:movies SOURCE=<source.xml>

There's an example file at `spec/example_xml/movies.xml`

    $ rake import:movies SOURCE=spec/example_xml/movies.xml

# Run application

    $ rails server

# View actor degree of separation

1. Visit localhost:3000
2. Click on an actors name
3. From actor page, view list of actors the actor is connected along with
   degrees of separation

# Launch on heroku

    $ heroku create
    $ git push heroku master
    $ heroku rake db:migrate
    $ heroku run rake import:movies SOURCE=spec/example_xml/movies.xml

# TODO

- Clean up UI (I havn't really focused on this and it needs some work)

# LICENSE

The application is for demonstrational purposes only. All rights reserved.
