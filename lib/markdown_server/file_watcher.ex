defmodule MarkdownServer.FileWatcher do
	def start_link do
		:erlfsmon.start_logger()
		{:ok, self()}
	end
	
end