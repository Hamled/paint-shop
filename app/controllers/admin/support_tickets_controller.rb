class Admin::SupportTicketsController < Admin::ApplicationController
  def index
    @tickets = SupportTicket.order(created_at: :desc)
  end
end
