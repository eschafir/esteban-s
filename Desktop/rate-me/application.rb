require 'sinatra/base'
require 'sinatra/activerecord'
require 'date'
require './models/event.rb' # your models
# require 'json' #json support
require './models/score.rb'
require './models/user.rb'

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

  get '/sign_in_page' do
	erb :sign_in
  end

  get '/log_in_page' do
	erb :log_in
  end

  get '/main_page' do 
	erb :main_page
  end

  post '/main_page' do
      existe = false
      users = User.all
      users.each do |user|
         if user.username == params[:username]
            then existe = true
         end
      end
      if existe
         then erb :error_username_exists
      else
           user = User.new
                  user.name = params[:name]
           user.username = params[:username]
           user.password = params[:password]
           user.email = params[:email]
           user.save
           @username = params[:username]
           erb :main_page  
      end
  end

  post '/login' do
      username_exist = false
      current_user = nil
      users = User.all
      users.each do |user|
         if user.username == params[:username] #primero verifico si el username existe
             username_exist = true             #si no existe, lanza error de usuario
             current_user = user
         end
      end
     
      if username_exist
            if current_user.password == params[:password] #si el username existe y es el
                  @username = current_user.username
                  erb :main_page                          #password correcto, me lleva al
            else erb :error_password_wrong                #main page
            end                                           #si no es correcto, lanza error de
      else                                                #contraseña
            erb :error_username_dont_exists  
      end
 end
 

end
