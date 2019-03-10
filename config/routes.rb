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
 	resources :reservations
 	resources :plans
 	resources :room_types
 end
 resources :facilities, only: [:index]

 namespace :admins do
 	resources :reservations
 	resources :plans
 	resources :room_types

 end


end
