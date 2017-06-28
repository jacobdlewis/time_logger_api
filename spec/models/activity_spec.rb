require 'rails_helper'

RSpec.describe Activity, type: :model do
  # test validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:active) }
end
