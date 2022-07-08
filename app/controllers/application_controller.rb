
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  # GET ROUTES 
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # GET ROUTES - SELLER
  #get sellers information 
  get "/sellers" do   
    sellers = Seller.all
    sellers.to_json(include: :items)
  end

  # get items specific to a seller
  get "/items/sellers/:id" do  
    item = Item.where (["seller_id= '%s'" , params[:id]])
    item.to_json(include: :seller)
  end

  # get a seller plus his items
  get "/sellers/:id" do
    sellers = Seller.all.find(params[:id])
    sellers.to_json(include: :items)
  end

  # get a seller with specific email and password
  get "/sellers/:email/:password" do
    seller = Seller.where (["email='%s' and password= '%s'", params[:email], params[:password]])
    seller.to_json(include: :items)
  end


  # GET ROUTES - BUYER ROUTES
  # get all items
  get "/items" do   
    items = Item.all
    items.to_json(include: :seller)
  end
  
  # get items by category
  get "/items/:category" do  
    item = Item.where (["category= '%s'" , params[:category]])
    item.to_json(include: :seller)
  end
 

  # POST ROUTES
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

  # create an item / post an add - not working
  post "/items" do
    item = Item.create(
      category: params[:category],
      image_url: params[:image],
      condition: params[:condition],
      price: params[:params],
      details: params[:details],
      description: params[:description]   
    )
    item.to_json
  end  


  # DELETE ROUTES
  # delete a seller
  delete "/sellers/:id" do
    seller = Seller.all.find(params[:id])
    seller.destroy
    seller.to_json
  end

  # seller deletes item
  delete "/items/seller/:item" do
    item = Item.where (["item='%s'", params[:item_id]])    
    item.destroy
    item.to_json
  end


  # PATCH ROUTES
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
 
end
