module SupportTicketsHelper
  def material_name(ticket)
    SupportTicket.human_attribute_name("material.#{ticket.material}")
  end
end
