Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
     get 'profule', to: 'user#show'
  end

  root to: 'competences#index'
   resources :competences do
      resources :terms, only: [:index, :new, :create] do
         patch :learn, on: :member
      end
   end
end
