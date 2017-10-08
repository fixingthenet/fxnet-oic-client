Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/openidconnect/callback', to: 'callback#index'
  root to: 'home#index'
end
