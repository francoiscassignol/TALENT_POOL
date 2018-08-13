Rails.application.routes.draw do
  root to: 'pages#home'
  resources :job_offers do
    resources :applications, only: [:index, :new, :create]
  end
  resources :applications, except: [:new, :create]
  resources :accounts, only: [:new, :create, :edit, :update]
end
