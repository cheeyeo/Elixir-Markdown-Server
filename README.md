# MarkdownServer

** TODO: Add description **

to run in iex:

iex -S mix

MarkdownServer.Router.start

mix deps.get

mix test


=====================


# episode 48

* added eml as dependency

* use eml syntax in generating html templates rather than heredocs

* extracted pages_controller into its own file lib/markdown_server/pages_controller.ex

* extracted html rendering into its own file 
lib/markdown_server/pages_view.ex

* added in compass and zurb foundation for CSS

* built own gemset and gem install using rvm 




episode 50
================

added websockets adnd hacks inside erlfsmon

* to recompile a local dependncy after some test changes
  mix deps.compile erlfsmon


* to set variables for apps before running iex:

MARKDOWN_SERVER_DIR=/tmp/markdown/ iex -S mix

iex --erl "--mnesia dir '~/doc/'" --name mynode