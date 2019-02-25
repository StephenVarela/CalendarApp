Rails.application.routes.draw do
  resource :calendar, only: [:show], controller: :calendar
  resources :events, only: [:new, :show, :edit, :destroy]
  root to: "calendar#show"
end
