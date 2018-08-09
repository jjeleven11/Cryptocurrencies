Rails.application.routes.draw do
  get 'home/index'
  root'home#index'

  get '/getdata', to: "home#index"

post '/getdata', to: "home#index"

end
