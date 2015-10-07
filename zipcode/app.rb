require 'sinatra'
require 'data_mapper'
require	'./models/zipcode.rb'
require 'json'
 
DataMapper.setup(:default, 'postgres://localhost/geocode')
DataMapper.finalize.auto_upgrade!
 
get '/zipcode/:id' do
	content_type :json
	p Zipcode
    zip = Zipcode.get(params[:id])
    p zip
    { zip: zip.zip, city: zip.city, state: zip.state, lat: zip.lat, lng: zip.lng }.to_json
end