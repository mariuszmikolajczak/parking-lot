Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :levels
    resources :spot_sizes
    resources :parking_spots
    resources :bookings

    post '/find_free_parking_spot', to: 'parking#find_free_parking_spot', as: :parking_find_free_parking_spot
  end
end
