Rails.application.routes.draw do
  root 'static_pages#home'

  # Static pages
  scope controller: 'static_pages', as: 'static' do
    get :home
  end

  resources :support_tickets, only: [:create]

  namespace :admin do
    resources :support_tickets, only: [:index]
  end

  # Redirects
  post '/contact', to: redirect('/support_tickets', status: 307)
end
