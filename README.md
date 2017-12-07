# docker-phoenix-dev
Phoenix/Elixir Develoment environment in Docker

Uses the official elixir-alpine image to build a Dev environment.
The image is bigger than normal because Development environments have different needs from production.

To start your dev container run `docker container run -it -p 4000:4000 -p 9485:9485 angelofm/phoenix-dev:latest zsh`

Refer to the official guide to create a new application once inside the container https://hexdocs.pm/phoenix/up_and_running.html

Tip: read about docker volumes and how you can mask volumes inside your container, this way your change will persist and not be lost when you terminate the container.
