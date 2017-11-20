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

  get "/goodbye/:name" do
    uname = params[:name]
    "Goodbye, #{uname}."
  end

  get "/multiply/:num1/:num2" do
      nums1 = params[:num1]
      nums2 = params[:num2]
      "#{nums1.to_i*nums2.to_i}"
  end

end
