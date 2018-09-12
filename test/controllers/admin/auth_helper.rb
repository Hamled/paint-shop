require 'active_support/concern'

module AuthHelper
  extend ActiveSupport::Concern

  included do
    let(:username) { 'admin' }
    let(:password) { 'PaintIsGreat78' }
    let(:auth_header) do
      { 'Authorization' => ActionController::HttpAuthentication::Basic.encode_credentials(username,password) }
    end
  end
end
