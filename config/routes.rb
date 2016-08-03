Rails.application.routes.draw do
  # root 'restaurants'
  resources :restaurants, only: [:index, :new, :create, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
