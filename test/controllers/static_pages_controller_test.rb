require "test_helper"

describe StaticPagesController do
  describe "home" do
    it "must respond with success" do
      get static_home_path

      must_respond_with :success
    end
  end
end
