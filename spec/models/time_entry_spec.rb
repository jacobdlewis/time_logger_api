require 'rails_helper'

RSpec.describe TimeEntry, type: :model do
  # test associations
  describe "associations" do
    it { should belong_to(:activity) }
    it { should belong_to(:project) }
  end

  # test validations
  describe "validations" do
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:hours) }
  end
end
