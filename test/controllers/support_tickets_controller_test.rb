require "test_helper"

describe SupportTicketsController do
  describe "create" do
    let(:brush) { brushes(:fan_blender) }

    let(:valid_data) do
      {
        brush_sku: brush.sku,
        material: "n-a",
        feedback: "Why doesn't it work?",
        name: "Artist Extraordinaire",
        email: "very.good.artist@example.net"
      }
    end

    let(:invalid_brush) { valid_data.merge(brush_sku: "INVALID") }
    let(:without_mat) { valid_data.except(:material) }

    it "should respond with Success with valid form data" do
      post support_tickets_path, params: valid_data

      must_respond_with :success
    end

    it "should respond with Bad Request w/o a valid brush" do
      post support_tickets_path, params: invalid_brush

      must_respond_with :bad_request
    end

    it "should respond with Bad Request w/o required fields" do
      required = %i(feedback name email)

      required.each do |field|
        post support_tickets_path, params: valid_data.except(field)

        must_respond_with :bad_request
      end
    end

    it "should create a new ticket" do
      expect {
        post support_tickets_path, params: valid_data
      }.must_change(-> { SupportTicket.count }, 1)
    end

    it "should create a new ticket with the correct data" do
      post support_tickets_path, params: valid_data

      ticket = SupportTicket.last
      expect(ticket.brush).must_equal brush
      valid_data.except(:brush_sku).each do |attr, val|
        expect(ticket.send(attr)).must_equal val
      end
    end

    it "should default material to N/A" do
      post support_tickets_path, params: without_mat

      ticket = SupportTicket.last
      expect(ticket.material).must_equal "n-a"
    end
  end
end
