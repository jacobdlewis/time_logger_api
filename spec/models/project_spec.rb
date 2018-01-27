require 'rails_helper'

RSpec.describe Project, type: :model do
  # test associations
  describe "associations" do
    it { should belong_to(:client) }
    it { should belong_to(:category) }
  end

  # test validations
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:category_id)}
    it { should validate_presence_of(:client_id)}
  end
end
