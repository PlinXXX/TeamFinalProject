Rails.application.routes.draw do
 

  resources :tests
  resources :answers
  resources :question
   root 'question#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
