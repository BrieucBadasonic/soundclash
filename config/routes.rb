Rails.application.routes.draw do
  root to: 'orders#new'
  get "/succes", to: "pages#succes"
  resources :orders, only: [ :new, :create, :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
