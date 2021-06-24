class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end

  # method "URL" do
    
  # end


  get "/users" do
    User.all.to_json({
    include: {gardens: {include: :plants}}
    })
  end

  post "/login" do
    user = User.find_by(username: params[:username], password: params[:password])
    if user.nil?
      {error: "Incorrect username or password"}.to_json
    else
      user.to_json(include: {gardens: {include: :plants}})
    end
  end

  post "/signup" do
    user = User.find_by(username: params[:username])
    if user
      {error: "Username already exists"}.to_json
    else
      user.to_json(include: {gardens:{include: :plants}})
    end
  end

  get "/plants" do 
    Plant.all.to_json()
  end



end
