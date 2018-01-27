class Project < ApplicationRecord
  belongs_to :client
  belongs_to :category

  validates :name, :client_id, :category_id, presence: true
  validates :active, inclusion: { in: [true, false] }
end
