defmodule MarkdownServer.FileWatcher do
	def start_link do
		# need to define some kind of callback handler here??
		:erlfsmon.start_logger()
		{:ok, self()}
	end
	
end