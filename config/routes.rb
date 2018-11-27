Rails.application.routes.draw do
	# kind of route
	# controller#method name
 root "subs#index"

 #get "subs/new"
 #get "/subs/new", to: "subs#new"

 #post "/subs", to: "subs#create"
 # :id is a placeholder for the id number
 #put "/subs/:id", to: "subs#update"
 #delete "/subs/:id", to: "subs#delete"

 # this is  an embedded route, nested routes
 resources :subs do 
	resources :topics
 end

end
