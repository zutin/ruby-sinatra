require 'sinatra'
require './models/calculator'

set :bind, '0.0.0.0'
set :port, 3000

get '/' do
  'Hello world!'
end

get '/sum' do
  define_values(params)
  result = Calculator.sum(@first_value, @second_value)
  status 200
  body result.to_s
rescue ArgumentError => e
  status 400
  body "Invalid input: #{e.message}"
end

get '/subtract' do
  define_values(params)
  result = Calculator.subtract(@first_value, @second_value)
  status 200
  body result.to_s
rescue ArgumentError => e
  status 400
  body "Invalid input: #{e.message}"
end

private

def define_values(params)
  @first_value = Integer(params['first'])
  @second_value = Integer(params['second'])
end
