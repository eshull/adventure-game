require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/room')
require('./lib/exit')
require("pg")
require("pry")

get('/') do
  # @stores_list = Store.all
  erb(:index)
end

get('/room/:id') do
  @current_room = Room.find(params[:id].to_i)
  @exits = []
  @current_room.exits.each do |frog|
    @exits.push(frog.nsew)
  end
  erb(:room)
end

post('/room/:id') do
  @current_room = Room.find(params[:id].to_i)
  @exits = []
  @current_room.exits.each do |frog|
    @exits.push(frog.nsew)
  end
  erb(:room)
end
#
# get('/stores/:id/edit') do
#   @store = Store.find(params[:id].to_i)
#   @all_brands = Brand.all
#   erb(:edit)
# end
#
# get('/brands') do
#   @all_brands = Brand.all
#   erb(:brand)
# end
#
# post('/brands/rename') do
#   rename_brand = params["updated_name"]
#   rename_id = params["to_update_id"]
#   rename_do = Brand.find(rename_id)
#   rename_do.update(name: rename_brand)
#   @all_brands = Brand.all
#   erb(:brand)
# end
#
# post('/brands/reprice') do
#   reprice_price = params["updated_price"].to_i
#   reprice_id = params["to_update_id"]
#   reprice_do = Brand.find(reprice_id)
#   reprice_do.update(price: reprice_price)
#   @all_brands = Brand.all
#   erb(:brand)
# end
#
# post('/brands/delete') do
#   @delete_brand = params["brands_drop"]
#   Brand.destroy(@delete_brand)
#   @all_brands = Brand.all
#   erb(:brand)
# end
#
# post('/stores/:id/title') do
#   @store = Store.find(params[:id].to_i)
#   @updated_title = params["updated_title"]
#   @store.update(:title => @updated_title)
#   @all_brands = Brand.all
#   erb(:edit)
# end
#
# post('/stores/:id/brand') do
#   @store = Store.find(params[:id].to_i)
#   @brand_name = params["brands_drop"]
#   @brand = Brand.find_by(name: @brand_name)
#   @store.brands << Brand.find_or_create_by(:name => @brand_name)
#   @all_brands = Brand.all
#   erb(:edit)
# end
#
# post('/stores/:id/brand/new') do
#   @store = Store.find(params[:id].to_i)
#   @brand_name = params["new_brand"]
#   @brand_price = params["new_price"]
#   @add_brand = @store.brands.find_or_create_by(:name => @brand_name, :price => @brand_price)
#   @all_brands = Brand.all
#   erb(:edit)
# end
#
# post('/stores/:id/remove') do
#   @store = Store.find(params[:id].to_i)
#   Store.destroy(@store.id)
#   redirect '/'
# end
