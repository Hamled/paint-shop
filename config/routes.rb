Rails.application.routes.draw do
  resources :support_tickets, only: [:create]

  namespace :admin do
    resources :support_tickets, only: [:index]
  end

  # Redirects
  post '/contact', to: redirect('/support_tickets', status: 307)
end
