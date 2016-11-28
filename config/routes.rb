Rails.application.routes.draw do
  resources :voice_messages do
    resources :comments
  end
  root to: 'feed#index'
  get 'feed/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
