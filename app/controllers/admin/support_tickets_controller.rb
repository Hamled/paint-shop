class Admin::SupportTicketsController < Admin::ApplicationController
  def index
    @tickets = SupportTicket.all
  end
end
