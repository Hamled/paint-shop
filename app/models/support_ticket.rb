class SupportTicket < ApplicationRecord
  belongs_to :brush

  enum material: %w(n-a horsehair polyester nylon)

  validates :feedback, :name, :email, presence: true
end
