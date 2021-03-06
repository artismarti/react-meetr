Rails.application.routes.draw do
  resources :meeting_venues
  resources :venues
  resources :user_meetings
  resources :meetings
  resources :users

  # redirect signin to users/signin
  post 'signin', to: 'users#signin'

  # redirect signin to users/signup
  post 'signup', to: 'users#signup'

  # validate users
  get 'validate', to: 'users#validate'

  # get meetings
  get 'mymeetings', to: 'users#get_meetings'

  # get contacts
  get 'mycontacts', to: 'users#get_contacts'

  # update midpoint
  patch 'midpoint', to: 'meetings#update_midpoint'

end
