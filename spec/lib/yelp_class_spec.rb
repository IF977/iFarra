require 'rails_helper'
require 'yelp_class'

describe Yelp do
  
    resposta = Yelp.search_by_name('musica')
    
    it 'receives a successful response from the Yelp API' do
      expect(resposta.code).to be(200)
    end
    
    it 'receives the places results from the Yelp API' do
      expect(resposta).to have_key('businesses')
    end
    
    it 'receives a response with JSON type' do
      expect(resposta.headers['content-type']).to match('json')
    end
end