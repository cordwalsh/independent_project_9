require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/learn')
also_reload('lib/**/*.rb')

get ('/')do
  @learn = Dictionary.all
  erb :default
end

get ('/home')do
  @learn = Dictionary.all
  erb :default
end

get ('/new_word')do
  @learn = Dictionary.all
  erb :new_word
end

post ('/')do
  dictionary = Dictionary.new({:word => params[:user_word], :definition => params[:user_definition]})
  Dictionary.add(dictionary)
  @learn = Dictionary.all
  redirect to('/')
end
