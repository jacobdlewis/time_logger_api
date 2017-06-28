class Project < ApplicationRecord
  belongs_to :client
  belongs_to :category

  validates :name, :active, :client_id, :category_id, presence: true
end
