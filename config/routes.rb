Rails.application.routes.draw do
  devise_for :users

  resources :wikis do
    resources :collaborators, only: [:create, :destroy]
  end

  resources :charges, only: [:new, :create]

  resources :users, only: [:show] do
    member do
      # get 'show'
      post 'downgrade'
    end
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
