require 'rails_helper'

RSpec.describe Client, type: :model do
  # test associations
  it { should have_many(:projects) }

  # test validations
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:active) }
end