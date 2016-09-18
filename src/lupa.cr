require "http/server"
require "markdown"

handlers = [HTTP::ErrorHandler.new, HTTP::LogHandler.new]

server = HTTP::Server.new("0.0.0.0", ENV["LUPA_PORT"].to_i, handlers) do |context|
  context.response.content_type = "text/plain"
  context.response.print Markdown.to_html(context.request.body.to_s)
end

server.listen
