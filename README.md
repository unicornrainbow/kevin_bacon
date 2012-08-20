# Example App

This is a rails application running on a *postgres db*.

Loads actions from xml input into a data warehouse. Show's degrees of
separation between 2 actors.

# Install

    $ bundle install
    $ rake db:create db:migrate  # Db is postgres for heroku compatibility `brew install postgres` (Also need to create root user)

# Load xml data

    $ rake import:movies SOURCE=<source.xml>

# Run application

    $ rails server

# View actor degree of separation

1. Visit localhost:3000
2. Click on an actors name
3. From actor page, view list of actors the actor is connected along with
   degrees of separation

# TODO

- Clean up UI (I havn't really focused on this and it needs some work)

# LICENSE

The application is for demonstrational purposes only. All rights reserved.
