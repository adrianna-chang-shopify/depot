Rails.application.routes.draw do
  #Define root path and add store_index_url to ensure that existing code/tests continue to work
  root 'store#index', as: 'store_index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
