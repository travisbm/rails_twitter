Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users do
    resources :tweets
  end

  resources :tweets
end
