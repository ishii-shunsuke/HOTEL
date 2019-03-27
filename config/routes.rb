Rails.application.routes.draw do


  namespace :admins do
    get 'users/index'
    get 'users/show'
  end
  namespace :admin do
    get 'users/index'
    get 'users/show'
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
  get '/users', to:'users#show', as:'users'

  namespace :users do
    resources :facilities do
      collection do
        get :restaurant
        get :access
      end
    end

    resources :reservations do

    end
    resources :plans do
      resources :rooms do
        resources :reservations do
      end
    end
  end

    get 'reservation_cancel' => 'reservations#destroy_complete', as: 'reservation_cancel'

    resources :room_types, only: [:index]
  end


  namespace :admins do
  resources :users
 	resources :reservations
 	resources :plans
 	resources :room_types
  end




end
