class Category < ApplicationRecord
  has_many :projects

  validates :name, :active, presence: true
end
