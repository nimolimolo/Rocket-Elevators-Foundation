Rails.application.routes.draw do
  resources :interventions
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  
  post "/graphql", to: "graphql#execute"
  resources :leads
  resources :elevators
  resources :columns
  resources :batteries
  resources :customers
  resources :addresses
  resources :building_details
  resources :buildings
  resources :quotes
	root "rocket#index"
	
	post "/home/testpost", to: "home#testpost"
	get "/index", to: "rocket#index"
	get "/quote", to: "rocket#quote"
	get "/residential", to: "rocket#residential"
	get "/commercial", to: "rocket#commercial"
	get "/intervention", to: "rocket#intervention"
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	post "/admin/briefing/watsonbriefing", to: "watson#watsonBriefing"
	resources :employees
	get 'home/index'
	get 'home_controller/index'
	get 'get_building/:customer_id', to: 'interventions#get_building'
	get 'get_battery/:building_id', to: 'interventions#get_battery'
	get 'get_column/:battery_id', to: 'interventions#get_column'
	get 'get_elevator/:column_id', to: 'interventions#get_elevator'
	devise_for :users     

	post "/quotes/create", to: "quotes#create"
	post "/leads/create", to: "leads#create"
end