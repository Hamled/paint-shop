Rails.application.routes.draw do
  resources :support_tickets, only: [:create]
end
