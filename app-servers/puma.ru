# Use run-puma.sh vs calling this directly!
semaphore = Mutex.new

@call_count = 0
app = proc do |env|
  @call_count += 1
  #semaphore.synchronize do
    puts "Call ##{@call_count}, pid: #{Process.pid}, tid: #{Thread.current.object_id}"
    sleep(3)
  #end
  [ 200, {'Content-Type' => 'text/plain'}, ["Hello World"] ]
end

run app


