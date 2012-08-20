# Example App

Loads actions from xml input into a data warehouse. Show's degrees of separation between 2 actors.

# Load xml data

    $ rake import:actors SOURCE=<source.xml>

# Run application

    $ rails server

# View actor degree of separation

1. Select actor from the index on the homescreen.
2. From actor page, view list of actors the actor is connected.

# TODO

- Parse xml
- Store in data warehouse
- Calculate degrees of separation
- Display in UI
- Launch on heroku
- Bootstrap UI


# LICENSE

The application is purely for demonstration purposes. All rights retained.
