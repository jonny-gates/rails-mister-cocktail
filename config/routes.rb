Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :cocktails, only: [:show, :new, :create, :edit, :update] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :doses, only: :destroy
  resources :reviews, only: :destroy
end
