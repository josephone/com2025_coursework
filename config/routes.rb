Rails.application.routes.draw do
  resources :contact_us
  get 'home/index'
  devise_for :users
  resources :films

  root 'films#index'
  get 'contact_us', to: 'contact_us#new'
  post 'request_contact_path', to: 'contact_us#request_contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
