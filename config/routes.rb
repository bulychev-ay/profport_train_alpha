Rails.application.routes.draw do
   resources :competences
   resources :terms, only: [:index, :new, :create]
end
