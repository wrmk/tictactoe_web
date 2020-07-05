require 'sinatra'
require 'sinatra/reloader'


def change_space index
		# изменение выюанной пользователем ячейки
		@@r[index[1].to_i-1][index[0].to_i-1] = "+"

		# проверка на заполненность игрового поля
		m = 0
		0.upto(2) do |i|
			if @@r[i].include?("X")
				m = m +1
			end
		end

		# изменение ячейки компьютером
		if m >0
			x = rand(0..2)
			y = rand(0..2)
			while @@r[x][y] == "0" or @@r[x][y] == "+"
				x = rand(0..2)
				y = rand(0..2)
			end
			@@r[x][y] = "0"	
		end

end

def reset
	@@r = [['X','X','X'],['X','X','X'],['X','X','X']]
end

configure do
	reset
end

get '/' do
erb :layout
end



post '/' do

@index = params[:choose].split
if @index != ""
	change_space @index
end

erb :layout
end

post '/reset' do
reset
erb :layout
end