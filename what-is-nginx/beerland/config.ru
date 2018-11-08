app = proc do |env|
  puts "Got Request!"
  [ 200, {'Content-Type' => 'text/html'}, ["<h2>Welcome to Beerland!</h2><p><img src='beer.jpg' width='200'></p>"] ]
end

run app
