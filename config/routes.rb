Rails.application.routes.draw do
  resources :support_tickets, only: [:create]

  # Redirects
  post '/contact', to: redirect('/support_tickets', status: 307)
end
