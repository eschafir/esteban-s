require 'sinatra/base'
require 'sinatra/activerecord'
require 'date'
require './models/event.rb' # your models
# require 'json' #json support
require './models/score.rb'

class MyApplication < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions


  #:nocov:
  configure :production,:staging do
    set :database, ENV['DATABASE_URL']
  end

  configure :development do
    set :database, 'sqlite:///dev.db'
  end
  #:nocov:

  configure :test do
    set :database, 'sqlite:///dev.db'
  end

  get '/' do
    erb :home
  end

  get '/new' do
    erb :event_new
  end

  post '/new' do
    user = "somebody@someplace.com"    
    name = params[:name]
    date = Date.parse(params[:date])
    event = Event.new
    event.name = name
    event.date = date
    event.user = user
    event.save
    @message = "Event created"
    erb :operation_result
  end

  get '/events' do
    @list = Event.all
    erb :event_list
  end

  get '/event/:id/rate' do
     event = Event.find(params[:id].to_i) 
     @event_name = event.name  
     erb :rate_event 
  end

  post '/event/:id/rate' do
       type_rate = params[:name]
       id= params[:id]
       event = Event.find(id)
       score = Score.new
       score.event_id = event
       score.rate = type_rate
       score.comment = ""
       score.save
       @message="Your score was sent!!! Thanks!!!"
       erb :score_sent
  end

end
