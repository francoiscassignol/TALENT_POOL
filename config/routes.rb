Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :job_offers do
    resources :applications, only: [:index, :new, :create]
  end
  resources :applications, except: [:index, :new, :create]
  resources :accounts, only: [:new, :create, :edit, :update]

  get 'applications', to: "applications#all", as: "all_applications"
end
