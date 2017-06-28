class Client < ApplicationRecord
  has_many :projects

  validates :first_name, :last_name, :active, presence: true
end
