Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 

  # Defines the root path route ("/")
  # root "articles#index"
    root  to:"main#index"

    # /about
    get "/about-us", to:"about#index", as: "about"

    # /Sign_Up
    get "/sign_up", to:"registration#new"
    post "/sign_up", to:"registration#create"

    # /Sign_In
    get "/sign_in", to:"session#new"
    post "/sign_in", to:"session#create"

    # /Log_Out
    get "/logout", to:"session#new"
    delete "/logout", to: "session#destroy"



end