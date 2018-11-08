app = proc do |env|
  puts "Got Request!"
  [ 200, {'Content-Type' => 'text/html'}, ["<h2>Welcome to Coffeeland!</h2><p><img src='coffee-beans.jpg' width='200'></p>"] ]
end

run app
