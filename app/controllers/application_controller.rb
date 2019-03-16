require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name].split.map{|w|w.capitalize}.join(" ")
      #just playing to make first letter capitalize

      @members = params[:team][:members]
      erb :team
    end

end
