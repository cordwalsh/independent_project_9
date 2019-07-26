require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/learning')
also_reload('lib/**/*.rb')

get ('/') do
  @learn = Dictionary.all
  erb :default
end

get ('/home') do
  @learn = Dictionary.all
  erb :default
end
