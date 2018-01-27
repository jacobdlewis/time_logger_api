require 'rails_helper'

RSpec.describe Activity, type: :model do
  # test validations
  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
