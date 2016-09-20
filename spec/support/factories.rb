FactoryGirl.define do

  sequence :name do |n|
    "Item #{n}"
  end
  factory :item do
    name { generate(:name) }
  end

end
