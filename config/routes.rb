Rails.application.routes.draw do
  resources :movies
  root 'home#index'
  resource 'profiles', only: [:show, :edit], :path => "my-account"
  
  resources 'movies' do
    resources :comments
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
