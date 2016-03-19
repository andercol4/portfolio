Rails.application.routes.draw do

  namespace :admin do
    resources :educations
  resources :interests
  resources :projects
  resources :works

    root to: "interests#index"
  end

  root 'home#index'
  get 'resume', to: 'home#resume', as: 'resume'
end
