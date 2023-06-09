Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "time_logs" => "time_logs#index"
  post "time_logs" => "time_logs#create"
  delete "time_logs/:id" => "time_logs#destroy"
  put "time_logs/:id" => "time_logs#update"
end
