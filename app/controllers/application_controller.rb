
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/posts/new'
    erb :new
  end

  post '/posts' do
    Post.create(params)
    redirect '/posts'
  end
end
