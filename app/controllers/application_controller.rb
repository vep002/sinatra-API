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
    Plant.group(:common_name).to_json()
  end

  post "/plants" do 
    # 2.c) Backend recieves the post request and uses the plant_id sent from frontend to find a matching plant in the database.
    plant = Plant.find_by(plant_id: params[:plant_id])
    # 2.d) Creating an attributes hash for a new plant, based on the plant found in the above step, as well as the garden_id sent from the frontend.
    attributes = {genus: plant.genus, care_instructions: plant.care_instructionns, garden_id: params[:garden_id], image: plant.image, common_name: plant.common.name}
    # 2.e) creating a new plant with the attributes hash above
    newPlant = Plant.create(attributes)
    # 2.f) sending the new plant back to the front end. See frontend for next steps.
    newPlant.to_json()
  end



end
