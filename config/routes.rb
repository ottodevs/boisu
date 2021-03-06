Rails.application.routes.draw do
  root to: 'feed#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  #resources :user do
  resources :voice_messages, except: [:new] do
    resources :comments
  end
  #end

  #get '/voice_messages', to: 'voice_messages#index'

  get 'users/:id', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
