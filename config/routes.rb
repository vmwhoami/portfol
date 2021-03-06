# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :recentworks, except: %i[show index]
  get 'portfolio/:id', to: 'recentworks#show', as: 'portfolio_show'
  get 'portfolio', to: 'recentworks#index', as: 'portfolio'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  post 'contact', to: 'pages#create_contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
