class Activity < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :active, inclusion: { in: [true, false] }
end
