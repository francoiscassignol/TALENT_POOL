Rails.application.routes.draw do
  devise_for :users
  root to: 'job_offers#index'
  resources :job_offers do
    resources :applications, only: [:index, :new, :create]
  end
  resources :applications, except: [:index, :new, :create]

  get 'applications', to: "applications#all", as: "all_applications"
end
