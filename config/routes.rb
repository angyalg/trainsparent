Rails.application.routes.draw do
  get 'questions/index'

  # get 'questions/index'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'memory', to: 'pages#memory'
  get 'questions', to: 'questions#index'
end
