require 'sinatra/base'
ENV['RACK_ENV'] ||= 'development'
require_relative 'models/links'

class Bookmark < Sinatra::Base

  get '/' do
    'Hello Bookmark!'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/add'
  end

  post '/links' do
    Link.create(name: params[:page_name], tag: params[:page_tag], url: params[:page_url])
    redirect to('/links')
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
