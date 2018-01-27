class Category < ApplicationRecord
  has_many :projects

  validates :name, presence: true
  validates :active, inclusion: { in: [true, false] }
end
