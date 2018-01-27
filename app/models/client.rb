class Client < ApplicationRecord
  has_many :projects

  validates :first_name, :last_name, presence: true
  validates :active, inclusion: { in: [true, false] }
end
