Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:index, :create, :new]
  end
end
