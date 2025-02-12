require 'net/http'
require 'json'

url = URI("https://botw-compendium.herokuapp.com/api/v3/compendium/all")
response = Net::HTTP.get(url) # 1) Send request 2) Get response
data = JSON.parse(response) #3) Parse the JSON
# pp data #pp is pretty print

pp data["name"] 