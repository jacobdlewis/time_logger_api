class TimeEntry < ApplicationRecord
  belongs_to :activity, optional: true
  belongs_to :project, optional: true

  validates :date, :hours, presence: true
end
