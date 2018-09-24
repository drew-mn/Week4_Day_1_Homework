require ('sinatra')
require ('sinatra/contrib/all')
require ('pry')
require_relative './models/rock_paper_scissors'
also_reload('./models/*')

get '/' do
  erb(:welcome)
end

# get '/play_the_game' do
#   erb(:game)
# end

get '/play/:player1/:player2' do
  game = RockPaperScissors.new(params[:player1], params[:player2])
  @game = game.play
  erb(:game)
end

# get '/add/:num1/:num2' do
#   calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
#   # return "#{calculator.add()}"
#   @calculation = calculator.add()
#   erb(:result)
# end
