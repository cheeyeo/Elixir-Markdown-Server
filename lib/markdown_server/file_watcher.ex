defmodule MarkdownServer.FileWatcher do
	def start_link do
		path = Path.expand(MarkdownServer.base_dir, ".")
		:erlfsmon.subscribe(MarkdownServer.NotifyHandler, path, :sockets_group)
		:erlfsmon.start_logger()
		{:ok, self()}
	end
end