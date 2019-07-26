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

get ('/post/:id')do
  @post = Dictionary.search(params[:id].to_i)
  erb :post
end

get ('/post/:id/edit')do
  @post = Dictionary.search(params[:id].to_i)
  erb :edit_post
end

post ('/update/:id')do
    Dictionary.edit(params[:id].to_i,params[:new_definition])
  redirect to ('/')
end

delete('/update/:id') do
  @post = Dictionary.find(params[:id].to_i())
  @post.delete()
  @post = Dictionary.all
    redirect to ('/')
end
