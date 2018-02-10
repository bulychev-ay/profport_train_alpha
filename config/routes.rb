Rails.application.routes.draw do
   resources :competences do
      resources :terms, only: [:index, :new, :create] do
         patch :learn, on: :member
      end
   end
end
