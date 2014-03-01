defmodule MarkdownServer.FileWatcher do
	def start_link do
		# the directory to watch for
		# has to be absolute path for erlfsmon to understand!
		path = "/Users/chee/elixir/OCTOBER 2013/elixrsips/markdown_server/tmp/markdown/"
		:erlfsmon.subscribe(MarkdownServer.NotifyHandler, path, :sockets_group)
		:erlfsmon.start_logger()
		{:ok, self()}
	end
end