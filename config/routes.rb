Rails.application.routes.draw do
  resources :camper_activities, only: [:new, :create]

  get '/campers', to: "campers#index", as: "campers"
  get '/campers/:id', to: "campers#show", as: "camper"
  # get '/campers/new', to: "campers#show", as: "camper"


  get '/activities', to: "activities#index", as: "activities"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
