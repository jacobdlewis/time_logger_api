class Project < ApplicationRecord
  belongs_to :client
  belongs_to :category
end
