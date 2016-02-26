Rails.application.routes.draw do
  namespace :admin do
    resources :hobbies

    root to: "hobbies#index"
  end

  root 'home#index'
  get 'resume', to: 'home#resume', as: 'resume'
  resources :hobbies
end
