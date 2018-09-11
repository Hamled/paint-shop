require "test_helper"

describe Admin::SupportTicketsController do
  describe "index" do
    it "should respond with success" do
      get admin_support_tickets_path

      must_respond_with :success
    end
  end
end
