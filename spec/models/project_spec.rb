require 'rails_helper'

RSpec.describe Project, type: :model do
  # test associations
  it { should belong_to(:client) }
  it { should belong_to(:category) }

  # test validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:active) }
end
