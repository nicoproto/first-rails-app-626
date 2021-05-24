Rails.application.routes.draw do
  root to: 'pages#home' # => get '/', to: pages#home

  # Syntax:
  # verb 'path', to: 'controller#action'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
