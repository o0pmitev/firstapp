Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  #5.1 Routes : Role of the Route
  #routes tutorial
  get '/posts' , controller:'posts', action:'index'
  get 'error', to:'posts#error'
  # resources :posts, only: [:index, :new, :create, :destroy]
  #routes tutorial

  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  root 'simple_pages#landing_page'
  get 'simple_pages/landing_page' #accsess through the navigation Menu Home button
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
          get 'test', to: redirect("https://pmitev.netlify.com/")

          get '*path', to: redirect("/error")

post 'simple_pages/thank_you'
end
