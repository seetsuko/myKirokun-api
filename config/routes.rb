Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # ヘッダーにtokenを入れる
  namespace 'api' do
    namespace 'v1' do
      resources :users
      resources :users do
        resources :do_lists
      end
      resources :do_lists do
        resources :time_logs
      end
      namespace 'auth' do
        post 'users' => 'users#create'
        get 'users' => 'users#index'
      end
    end
  end

  # get "time_logs" => "time_logs#index"
  # post "time_logs" => "time_logs#create"
  # delete "time_logs/:id" => "time_logs#destroy"
  # put "time_logs/:id" => "time_logs#update"
end
