Rails.application.routes.draw do
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
