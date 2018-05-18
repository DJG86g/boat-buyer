Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :boats
  resources :boating_locations
  # resources :boats
  resources :users
  resources :marinas
  resources :boats

  # resources :users, shallow: true do
  #   resources :marinas do
  #     resources :boats
  #   end
  # end
end

# make these not nested
