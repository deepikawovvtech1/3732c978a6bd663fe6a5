Rails.application.routes.draw do
  resources :answers
  resources :topics
  devise_for :users
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: "questions#index"
  root :to => 'questions#index'
  get 'answers/fallow_users'
   match 'answers/fallow_users' => "answers#fallow_users", :via => [:get, :post],:as => :fallow_users
end
