FactoryGirl.define do

  factory :subscription do
    active true
    expire_date Date.today + 4.weeks
  end

end