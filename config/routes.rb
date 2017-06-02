Rails.application.routes.draw do
  
  root 'pages#index'

  get 'places/search_type' => 'places#search_type'
  
  get 'places/search_with_dados_abertos' => 'places#search_with_dados_abertos'

  devise_for :users
  
  resources :eventos
  
end
