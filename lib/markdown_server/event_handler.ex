defmodule MarkdownServer.EventHandler do
	use GenEvent.Behaviour

	## genevent api
	def init([pid]) do
		IO.puts "EventHandler init"
		{:ok, [pid]}
	end	

	def handle_event(event, pid) do
		IO.puts "INSIDE ERLFSMON EVENTS!"
		IO.inspect pid
	end
end