Rails.application.routes.draw do
  root 'boards#index'
  
  resources :boards, only: %i[index new create show]
end
