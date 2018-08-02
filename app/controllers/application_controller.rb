class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :recipes
  end

  get '/recipes' do
    @recipe = Recipe.all
    erb :index
  end


end
