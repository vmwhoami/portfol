Rails.application.routes.draw do
  resources :recentworks, except: %i[show]
  get 'portfolio/:id', to: "recentworks#show", as: 'portfolio_show'
  get 'about', to:'pages#about'
  get 'contact',to:'pages#contact'
  resources :blogs
root to:'pages#home'
end
