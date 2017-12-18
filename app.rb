require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
  text_from_user = params[:user_text]
  @text_piglatinized=PigLatinizer.new(text_from_user)
  erb :results
end
end
