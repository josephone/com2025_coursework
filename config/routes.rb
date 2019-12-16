  # States the RESTful verbs of each page and
  # specifies the source path (URL) of a given
  # page. routes.rb also defines where the
  # user should be redirected to depending on the
  # destination controller and accompanying method

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
