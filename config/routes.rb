Rails.application.routes.draw do

  namespace :admin do
    resources :interests
resources :projects

    root to: "interests#index"
  end

  root 'home#index'
  get 'resume', to: 'home#resume', as: 'resume'
end
