Rails.application.routes.draw do
 get "/login", to: 'sessions#new'
 post "/logout", to: 'sessions#create'
 delete "/logout", to: 'sessions#destroy'
end
