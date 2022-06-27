class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  # SELLER ROUTES
  #get sellers information 
  get "/sellers" do   
    sellers = Seller.all
    sellers.to_json(include: :items)
  end


  get "/sellers/:id" do
    sellers = Seller.all.find(params[:id])
    sellers.to_json(include: :items)
  end

  # create a seller
  post "/sellers" do
    seller = Seller.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      contact: params[:contact]
    )
    seller.to_json
  end

  # delete a seller
  delete "/sellers/:id" do
    seller = Seller.all.find(params[:id])
    seller.destroy
    seller.to_json
  end

  # update a seller
  patch "/sellers/:id" do
    seller = Seller.all.find(params[:id])
    seller.update(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      contact: params[:contact]
    )
    seller.to_json
  end

   # BUYER ROUTES
  get "/items" do   
    items = Item.all
    items.to_json(include: :seller)
  end
  # # TODO - filter
  # get "/items/:category" do
  #   # items = Item.select {|key,value| category: params[:category]}
  #   itemkeys = Item.select do |k,v|
  #     k == {params[:category]} 
  #   end

  #   arr = itemskeys.values
  #   arr.to_json
  # end

  get "/items/:id" do
    items = Item.all.find(params[:id])
    items.to_json(include: :seller)
  end
end
