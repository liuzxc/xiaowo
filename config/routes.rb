Rails.application.routes.draw do
    get 'home/index'

    root to: 'home#index'
    devise_for :users, controllers: { sessions: 'devise/sessions' }
    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
      get 'logout', to: 'devise/sessions#destroy'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
