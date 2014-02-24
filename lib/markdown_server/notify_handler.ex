defmodule MarkdownServer.NotifyHandler do
	use GenEvent.Behaviour

	def init([arg]) do
		{:ok, arg}
	end	


	def handle_event(event,pid) do
		:pg.send(pid, :reload)
		{:ok, pid}
	end
end