# Example App

Loads actions from xml input into a data warehouse. Show's degrees of
separation between 2 actors.

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

- Launch on heroku

# LICENSE

The application is for demonstrational purposes only. All rights reserved.
