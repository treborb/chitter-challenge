class Chitter < Sinatra::Base

  get '/' do
    @peeps = Peep.all
    slim :index
  end

  post '/peeps/new' do
    Peep.create(content: params[:'content'], timestamp: Time.now, user_id: session[:user_id])
    redirect '/'
  end

end
