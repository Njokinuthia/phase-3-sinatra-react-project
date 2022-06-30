
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

 get "/items/sellers/:id" do  
    item = Item.where (["seller_id= '%s'" , params[:id]])
    item.to_json
  end

  get "/sellers/:id" do
    sellers = Seller.all.find(params[:id])
    sellers.to_json(include: :items)
  end

  get "/sellers/:email/:password" do
    seller = Seller.where (["email='%s' and password= '%s'", params[:email], params[:password]])
    seller.to_json(include: :items)
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




  # AD ROUTES
  post "/items" do
    items = Item.create(
      category: params[:category],
      image_url: params[:image],
      condition: params[:condition],
      price: params[:params],
      details: params[:details]  ,
      description: params[:description]   
    )
    items.to_json
  end

 

   # BUYER ROUTES
  get "/items" do   
    items = Item.all
    items.to_json(include: :seller)
  end
 
  # get "/items/:category" do  
  #   item = Item.all.select do |singleItem|
  #     singleItem.category == params[:category]
  #   end
  #   item.to_json
  # end

  get "/items/:category" do  
    item = Item.where (["category= '%s'" , params[:category]])
    item.to_json(include: :seller)
  end


  
  
 
end
