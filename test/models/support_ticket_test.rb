require "test_helper"

describe SupportTicket do
  let(:ticket) { support_tickets(:one) }

  it "must be valid" do
    value(ticket).must_be :valid?
  end

  it "wont be valid without a brush" do
    ticket.brush = nil
    value(ticket).wont_be :valid?
  end

  it "wont be valid without feedback" do
    ticket.feedback = nil
    value(ticket).wont_be :valid?
  end

  it "wont be valid without a name" do
    ticket.name = nil
    value(ticket).wont_be :valid?
  end

  it "wont be valid without an email" do
    ticket.email = nil
    value(ticket).wont_be :valid?
  end

  it "defaults to N/A for material" do
    def_ticket = SupportTicket.new(ticket.attributes.except("material"))
    value(def_ticket.material).must_equal "n-a"
  end
end
