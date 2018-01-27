FactoryGirl.define do
  factory :time_entry do
    activity
    comment 'did some work'
    date Time.now
    hours 4.2
    project
    business_mileage 20
    personal_mileage 5
  end
end
