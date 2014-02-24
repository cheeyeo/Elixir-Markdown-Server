defmodule MarkdownServer.FileWatcher do
	def start_link do
		:erlfsmon.subscribe(MarkdownServer.NotifyHandler, :sockets_group)
		:erlfsmon.start_logger()
		{:ok, self()}
	end
	
end