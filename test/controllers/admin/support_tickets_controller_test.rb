require "test_helper"
require_relative "auth_helper"

describe Admin::SupportTicketsController do
  include AuthHelper

  describe "index" do
    it "must respond with Success" do
      get admin_support_tickets_path, headers: auth_header

      must_respond_with :success
    end
  end

  describe "when unauthenticated" do
    let(:auth_header) { Hash.new }

    describe "index" do
      it "must respond with Unauthorized" do
        get admin_support_tickets_path, headers: auth_header

        must_respond_with :unauthorized
      end
    end
  end
end
