Rails.application.routes.draw do

  # Routes for the Tripuser resource:
  # CREATE
  get "/tripusers/new", :controller => "tripusers", :action => "new"
  post "/create_tripuser", :controller => "tripusers", :action => "create"

  # READ
  get "/tripusers", :controller => "tripusers", :action => "index"
  get "/tripusers/:id", :controller => "tripusers", :action => "show"

  # UPDATE
  get "/tripusers/:id/edit", :controller => "tripusers", :action => "edit"
  post "/update_tripuser/:id", :controller => "tripusers", :action => "update"

  # DELETE
  get "/delete_tripuser/:id", :controller => "tripusers", :action => "destroy"
  #------------------------------

  # Routes for the Destinationcity resource:
  # CREATE
  get "/destinationcities/new", :controller => "destinationcities", :action => "new"
  post "/create_destinationcity", :controller => "destinationcities", :action => "create"

  # READ
  get "/destinationcities", :controller => "destinationcities", :action => "index"
  get "/destinationcities/:id", :controller => "destinationcities", :action => "show"

  # UPDATE
  get "/destinationcities/:id/edit", :controller => "destinationcities", :action => "edit"
  post "/update_destinationcity/:id", :controller => "destinationcities", :action => "update"

  # DELETE
  get "/delete_destinationcity/:id", :controller => "destinationcities", :action => "destroy"
  #------------------------------

  # Routes for the Destinationsite resource:
  # CREATE
  get "/destinationsites/new", :controller => "destinationsites", :action => "new"
  post "/create_destinationsite", :controller => "destinationsites", :action => "create"

  # READ
  get "/destinationsites", :controller => "destinationsites", :action => "index"
  get "/destinationsites/:id", :controller => "destinationsites", :action => "show"

  # UPDATE
  get "/destinationsites/:id/edit", :controller => "destinationsites", :action => "edit"
  post "/update_destinationsite/:id", :controller => "destinationsites", :action => "update"

  # DELETE
  get "/delete_destinationsite/:id", :controller => "destinationsites", :action => "destroy"
  #------------------------------

  # Routes for the Destination resource:
  # CREATE
  get "/destinations/new", :controller => "destinations", :action => "new"
  post "/create_destination", :controller => "destinations", :action => "create"

  # READ
  get "/destinations", :controller => "destinations", :action => "index"
  get "/destinations/:id", :controller => "destinations", :action => "show"

  # UPDATE
  get "/destinations/:id/edit", :controller => "destinations", :action => "edit"
  post "/update_destination/:id", :controller => "destinations", :action => "update"

  # DELETE
  get "/delete_destination/:id", :controller => "destinations", :action => "destroy"
  #------------------------------

  devise_for :users
  root 'trips#index'
  get "/", :controller => "trips", :action => "index"

  # Routes for the Trip resource:
  # CREATE
  get "/trips/new", :controller => "trips", :action => "new"
  post "/create_trip", :controller => "trips", :action => "create"

  # READ
  get "/trips", :controller => "trips", :action => "index"
  get "/trips/:id", :controller => "trips", :action => "show"

  # UPDATE
  get "/trips/:id/edit", :controller => "trips", :action => "edit"
  post "/update_trip/:id", :controller => "trips", :action => "update"

  # DELETE
  get "/delete_trip/:id", :controller => "trips", :action => "destroy"
  #------------------------------

  # Routes for the Country resource:
  # CREATE
  get "/countries/new", :controller => "countries", :action => "new"
  post "/create_country", :controller => "countries", :action => "create"

  # READ
  get "/countries", :controller => "countries", :action => "index"
  get "/countries/:id", :controller => "countries", :action => "show"

  # UPDATE
  get "/countries/:id/edit", :controller => "countries", :action => "edit"
  post "/update_country/:id", :controller => "countries", :action => "update"

  # DELETE
  get "/delete_country/:id", :controller => "countries", :action => "destroy"
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  # Routes for the Site resource:
  # CREATE
  get "/sites/new", :controller => "sites", :action => "new"
  post "/create_site", :controller => "sites", :action => "create"

  # READ
  get "/sites", :controller => "sites", :action => "index"
  get "/sites/:id", :controller => "sites", :action => "show"

  # UPDATE
  get "/sites/:id/edit", :controller => "sites", :action => "edit"
  post "/update_site/:id", :controller => "sites", :action => "update"

  # DELETE
  get "/delete_site/:id", :controller => "sites", :action => "destroy"

  #------------------------------

  # Routes for the User resource:
  # CREATE
  #get "/users/new", :controller => "users", :action => "new"
  #post "/create_user", :controller => "users", :action => "create"

  # READ
  #get "/users", :controller => "users", :action => "index"
  #get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  #get "/users/:id/edit", :controller => "users", :action => "edit"
  #post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  #get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Type resource:
  # CREATE
  get "/types/new", :controller => "types", :action => "new"
  post "/create_type", :controller => "types", :action => "create"

  # READ
  get "/types", :controller => "types", :action => "index"
  get "/types/:id", :controller => "types", :action => "show"

  # UPDATE
  get "/types/:id/edit", :controller => "types", :action => "edit"
  post "/update_type/:id", :controller => "types", :action => "update"

  # DELETE
  get "/delete_type/:id", :controller => "types", :action => "destroy"
  #------------------------------

end
