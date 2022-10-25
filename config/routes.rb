Rails.application.routes.draw do
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
  resources :products do 
    member do
      get :new_movement
      post :create_movement
    end
  end

end
