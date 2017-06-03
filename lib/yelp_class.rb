require 'rubygems'
require 'httparty'

class Yelp
   include HTTParty
   format :json
   base_uri 'https://api.yelp.com/v3/businesses'
   @@headers = {'Authorization' => 'Bearer ZUk5pk-KTzVmg_AiPUY8OptBU4QPA5SxrA2A6zOd6dew7uNWRXIOQiCPrKS4J2BomL-A1Ad4SUlXCkiT6m4piGg1cL4FUn1-Kl3vJAm1OgVHNQ48QlAUi_1UF-sdWXYx'}
   
   def self.search_by_name(name)
      get('/search?', :headers => @@headers, :query => {'term' => name, 'location' => 'Recife', 'limit' => 15})
   end
   
end