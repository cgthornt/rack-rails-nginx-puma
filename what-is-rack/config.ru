#\ -w -p 8080
app = proc do |env|
  [ 200, {'Content-Type' => 'text/html'}, ["<h1>Hello from rackup!</h1>"] ]
end

class LoggingMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    sleep(1.3)
    before = Time.now.to_i
    status, headers, body = @app.call(env)
    after = Time.now.to_i
    log_message = "<p>App took #{after - before} seconds.</p>"

    [status, headers, body << log_message]
  end
end

use LoggingMiddleware
# use SomeOtherMiddleware
run app
