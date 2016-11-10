Rails.application.routes.draw do
  root :to => "surgery_date_details#index"
  # Routes for the Health_detail resource:
  # CREATE
  get "/health_details/new", :controller => "health_details", :action => "new"
  post "/create_health_detail", :controller => "health_details", :action => "create"

  # READ
  get "/health_details", :controller => "health_details", :action => "index"
  get "/health_details/:id", :controller => "health_details", :action => "show"

  # UPDATE
  get "/health_details/:id/edit", :controller => "health_details", :action => "edit"
  post "/update_health_detail/:id", :controller => "health_details", :action => "update"

  # DELETE
  get "/delete_health_detail/:id", :controller => "health_details", :action => "destroy"
  #------------------------------

  # Routes for the Surgery_date_detail resource:
  # CREATE
  get "/surgery_date_details/new", :controller => "surgery_date_details", :action => "new"
  post "/create_surgery_date_detail", :controller => "surgery_date_details", :action => "create"

  # READ
  get "/surgery_date_details", :controller => "surgery_date_details", :action => "index"
  get "/surgery_date_details/:id", :controller => "surgery_date_details", :action => "show"

  # UPDATE
  get "/surgery_date_details/:id/edit", :controller => "surgery_date_details", :action => "edit"
  post "/update_surgery_date_detail/:id", :controller => "surgery_date_details", :action => "update"

  # DELETE
  get "/delete_surgery_date_detail/:id", :controller => "surgery_date_details", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
