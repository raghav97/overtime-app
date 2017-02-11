FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some rationale"
    user_id 1
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more rationale"
    user_id 2
  end
end