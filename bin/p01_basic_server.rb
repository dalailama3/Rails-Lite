require 'webrick'
require 'Rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  path = req.path
  res['Content-Length'] = 'text/html'
  res.write(path)
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000

)

# http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick.html
# http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/HTTPRequest.html
# http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/HTTPResponse.html
# http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/Cookie.html
