class Activity < ApplicationRecord
  validates :name, :active, presence: true
  validates :name, uniqueness: true
end
