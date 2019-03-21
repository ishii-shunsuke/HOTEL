Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  devise_for :users, controllers: {
   sessions:      'users/sessions',
   passwords:     'users/passwords',
   registrations: 'users/registrations'
}


  root 'users/reservations#top'

  namespace :users do
    resources :facilities do
      collection do
        get :restaurant
        get :access
      end
    end
    resources :reservations do
      member do
        get :destroy_when_reservation
      end
      collection do
        get :destroy_complete
      end
      resources :plans
    end
    resources :room_types, only: [:index]
  end

  namespace :admins do
 	resources :reservations
 	resources :plans
 	resources :room_types
  end




end
