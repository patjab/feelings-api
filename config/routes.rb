Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/students', to: 'students#index'
      get '/students/:id', to: 'students#show'
      post '/students', to: 'students#create'
      delete '/students', to: 'students#delete'

      get '/cohorts', to: 'cohorts#index'
      get '/cohorts/:id', to: 'cohorts#show'
      post '/cohorts', to: 'cohorts#create'
    end
  end
end
