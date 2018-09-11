class SupportTicketsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  before_action :find_brush, only: [:create]

  def create
    ticket = SupportTicket.create!(ticket_params)
    render :success
  rescue
    render :error, status: 400
  end

  private

  def find_brush
    @brush = Brush.find_by(sku: params[:brush_sku])
    render :error, status: 400 unless @brush
  end

  def ticket_params
    params.permit(
      :material,
      :feedback,
      :name,
      :email
    ).merge(brush: @brush)
  end
end
