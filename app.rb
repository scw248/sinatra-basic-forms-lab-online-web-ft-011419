require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
    
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    @new_puppy = Puppy.new(@name, @breed, @age)
    @result = @Puppy.piglatinize(user_phrase)
  end
  
  post "/puppy" do
    erb :display_puppy
  end
end
