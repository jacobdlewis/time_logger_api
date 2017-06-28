class Activity < ApplicationRecord
  validates :name, :active, presence: true
end
