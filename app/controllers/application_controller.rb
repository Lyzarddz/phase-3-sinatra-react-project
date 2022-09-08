class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post "/lists" do
    @list  = List.new(params[:list])
    @list.to_json()
  end

end
