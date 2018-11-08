require 'rack'
require 'thin'

# Event Machine

@call_count = 0
app = proc do |env|
  @call_count += 1
  puts "Call ##{@call_count}, pid: #{Process.pid}, tid: #{Thread.current.object_id}"
  sleep(5)
  [ 200, {'Content-Type' => 'text/plain'}, ["Hello World"] ]
end

Rack::Handler::Thin.run app

