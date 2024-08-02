require 'sinatra'

set :bind, '0.0.0.0'
set :port, 3000

get '/' do
  'Hello world!'
end

get '/sum' do
  a = params['a'].to_i
  b = params['b'].to_i
  sum = a + b
  sum.to_s
end

get '/subtract' do
  a = params['a'].to_i
  b = params['b'].to_i
  subtract = a - b
  subtract.to_s
end
