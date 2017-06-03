class PlacesController < ApplicationController
    require 'yelp_class'
    
    def search_type
    end
    
    def search_with_dados_abertos
      if params[:next_page] != nil
        @response = HTTParty.get('http://dados.recife.pe.gov.br' + params[:next_page])
      elsif params[:prev_page] != nil
        @response = HTTParty.get('http://dados.recife.pe.gov.br' + params[:prev_page])
      else
        @response = HTTParty.get('http://dados.recife.pe.gov.br/api/action/datastore_search?resource_id=d85bf4e3-637e-4e1b-9b03-970dca4403c7')
      end
    end

    def search_with_yelp
      if params[:search_input].nil? or params[:search_input] == ''
        @response = nil
      else
        @response = Yelp.search_by_name(params[:search_input])
      end
    end
    
end
