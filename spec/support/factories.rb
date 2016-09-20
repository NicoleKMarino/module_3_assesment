FactoryGirl.define do

  factory :item do
    name { generate(:name) }
    merchant
  end

end
