require 'rails_helper'

RSpec.describe Category, type: :model do
  # test associations
  describe "associations" do
    it { should have_many(:projects) }
  end

  # test validations
  describe "validations" do
    it { should validate_presence_of(:name) }  
  end
end
