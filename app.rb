require 'sinatra'
require 'sinatra/reloader'


def change_space index
	if index !=""
		@@r[index[1].to_i-1][index[0].to_i-1] = "+"
	end	
end


configure do
	@@r = [['X','X','X'],['X','X','X'],['X','X','X']]
end

get '/' do
erb :layout
end



post '/' do
@index = params[:button].split
change_space @index
erb :layout
end