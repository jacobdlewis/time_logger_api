require 'rails_helper'

RSpec.describe Category, type: :model do
  # test associations
  it { should have_many(:projects) }

  # test validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:active) }
end
