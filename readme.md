simple tic-tac-toe based on sinatra-bootstrap

Cleaned version of https://github.com/bootstrap-ruby/sinatra-bootstrap

create docker image:
  in the app folder
    $ docker build --tag tictactoe .

run container:
  $ docker run -p 80:4567 tictactoe

open localhost
