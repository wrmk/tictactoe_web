require 'sinatra'
require 'sinatra/reloader'

before do
@r = [['X','X','X'],['X','X','X'],['X','X','X']]	
end


get '/' do
  erb :layout
end



post '/' do
@index = params[:button]
  erb "#{@index}"
end