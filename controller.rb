require ('sinatra')
require ('sinatra/contrib/all')
require ('pry')
require_relative './models/rock_paper_scissors'
also_reload('./models/*')

get '/' do
  erb(:welcome)
end

get '/play/:hand1/:hand2' do
  game = RockPaperScissors.new(params[:hand1], params[:hand2])
  @game = game.play
  erb(:game)
end
