require 'rack'

class HelloWorld
  def call(env)
    [ 200, { "Content-Type" => "text/html" }, ["<h2>Hello World!</h2>"] ]
  end
end

Rack::Handler::WEBrick.run HelloWorld.new
