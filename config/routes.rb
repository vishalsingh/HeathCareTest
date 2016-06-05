Rails.application.routes.draw do
  get 'users/index'

  namespace :api do
    scope module: :v1 do
      resources :users, :only => [:show]
    end
  end
end
