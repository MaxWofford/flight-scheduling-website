Rails.application.routes.draw do
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'teams' => 'pages#team'
  get 'plan' => 'pages#schedule'
  #get 'team/:id' => 'pages#team', as: 'patient'

  devise_for :users
  devise_scope :user do
    get '/sign-in' => "devise/sessions#new", :as => :login
  end
end
