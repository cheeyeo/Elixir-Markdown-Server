defmodule MarkdownServer.NotifyHandler do
	use GenEvent.Behaviour

	def init([arg]) do
		{:ok, arg}
	end	


	def handle_event(event,pid) do
		# event of the form:
    # pid is the arg returned when passed in originally
    {a,b,c} = event
    # a => file_event: "/Users/chee/elixir/OCTOBER 2013/elixrsips/markdown_server/tmp/markdown/basic.md" [inodemetamod,modified]#PID<0.128.0>
    # b => {:erlfsmon, :file_event}
    # c => {'/Users/chee/elixir/OCTOBER 2013/elixrsips/markdown_server/tmp/markdown/basic.md',[:inodemetamod, :modified]}
    
    # IO.inspect a 
    # IO.inspect b
    # IO.inspect c

		:pg.send(pid, :reload)
		{:ok, pid}
	end
end