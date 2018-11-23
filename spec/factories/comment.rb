FactoryBot.define do
  factory :comment do
    content "that is comment"
    association :mangak
    association :user
  end
end
