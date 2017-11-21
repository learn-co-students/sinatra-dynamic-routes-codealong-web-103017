require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  #in this example. controller is not using model or view.
  #just the an example of dynamic route, if user inputs anykind of string
  #it'll return what I pass.
  get '/goodbye/:name' do
    @user_name = params[:name] #params is {} until i pass a key &value, value is what user inputs
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1 * @num2}"
  end
end
