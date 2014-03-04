## MarkdownServer

A markdown server that runs locally which watches, parses and generates HTML in realtime.
Think of it as live reload for markdown but in Elixir.

## Usage

```sh

export MARKDOWN_SERVER_DIR="mymarkdowndirectory"

bundle install

mix deps.get

mix test (optional)

iex -S mix

```

Navigate to http://localhost:4000/pages/

Click on any markdown files listed. Make changes to it in see the browser update the page
automatically.


## How it works

[fsevent_watch](https://github.com/proger/fsevent_watch) is used to watch for file changes specified in the environment variable MARKDOWN_SERVER_DIR, which defaults to
'./tmp/markdown'

Once a change is made, it sends a message to the global event manager which sends 
a message back to the handler, an example of it in notify_handler.ex.

The handler then sends a message to the process group which broabcasts it to the websocket cowboy server.

Since this project also uses SASS, it uses compass to watch for changes/updates in sass
files

## Notes on branches

The project is developed following a series of tutorials hence its split into separate branches to correspond to the state at that point. To see trace the development, please
checkout the corresponding branch.

## Notes on branch episode 48
=============================

* added eml as dependency

* use eml syntax in generating html templates rather than heredocs

* extracted pages_controller into its own file lib/markdown_server/pages_controller.ex

* extracted html rendering into its own file 
lib/markdown_server/pages_view.ex

* added in compass and zurb foundation for CSS

* built own gemset and gem install using rvm 



## Notes on branch episode 50
=============================

added websockets adnd hacks inside erlfsmon

* to recompile a local dependncy after some test changes
  mix deps.compile erlfsmon


* to set variables for apps before running iex:

```
MARKDOWN_SERVER_DIR=/tmp/markdown/ iex -S mix
```
