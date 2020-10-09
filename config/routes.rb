Rails.application.routes.draw do
  devise_for :users
  resources :recentworks, except: %i[show]
  get 'portfolio/:id', to: "recentworks#show", as: 'portfolio_show'
  get 'about', to:'pages#about'
  get 'contact',to:'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

root to:'pages#home'
end
