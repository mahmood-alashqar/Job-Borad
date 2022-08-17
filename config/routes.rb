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
    delete "/logout", to: "session#remove"

    #Rest/Forget _Password
    get "/password", to:"password#edit", as: :edit_password
    patch "/password", to:"password#update"
    get "/password/reset", to: "password#new_reset"
    post "/password/reset", to: "password#create_reset"
    get "/password/reset/edit", to: "password#edit_reset"
    post "/password/reset/edit", to: "password#edit_reset"
    patch "/password/reset/update", to: "password#update_reset"

    #List Jobs
    get "/jobs", to: "jobs#fetch_jobs"

    #List/Add_Job --> Admin Only For Now :D
    get"/jobs/recruiter_applications", to:"jobs#applications_view"

    post "/jobs/add_job", to:"jobs#create_job_post"
    get "/jobs/add_job", to:"jobs#new"
    get "/test", to:"companies#test"
    get "/test/new", to:"companies#new"

    # /Apply Jobs
    get "/jobs/Apply_Job", to:"jobs#new"
    post "/jobs/Apply_Job", to:"jobs#apply_job"

    # /Applied 
    get "/jobs/Applied_jobs", to:"jobs#fetch_applied"
    delete "/jobs/Applied_jobs", to:"jobs#remove"




end