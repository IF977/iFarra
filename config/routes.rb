Rails.application.routes.draw do

  root 'pages#index'
  
  get 'messages' => 'pages#messages'

  get 'places/search_type' => 'places#search_type'
  
  get '/places/search_with_yelp' => 'places#search_with_yelp'
  
  get 'places/search_with_dados_abertos' => 'places#search_with_dados_abertos'

  devise_for :users
  
  resources :eventos do
    resources :comentarios
  end
  
  resources :conversations, only: [:create] do
    member do
      post :close
    end

    resources :messages, only: [:create]
  end
end
