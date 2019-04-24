FactoryGirl.define do

  factory :user do
    first_name "Boris"
    last_name "Spider"
    password "secret123"
    password_confirmation { password }
    customer_id "superbad"

    after(:create) do |user|
      user.subscription.update_attributes(active: true, expire_date: Date.today + 4.weeks)
    end
  end

end