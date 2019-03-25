Rails.application.routes.draw do

  namespace :users do
    get 'rooms/new'
  end
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
  get '/admins/top', to:'admins/reservations#top'

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
    end
    resources :plans do
      resources :rooms do
        resources :reservations
      end
    end


    resources :room_types, only: [:index]
  end


  namespace :admins do
  resources :users
 	resources :reservations
 	resources :plans
 	resources :room_types
  end




end
