require 'rails_helper'

RSpec.describe Client, type: :model do
  # test associations
  describe "associations" do
    it { should have_many(:projects) }
  end

  # test validations
  describe "validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end
end
