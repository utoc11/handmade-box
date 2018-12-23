FactoryBot.define do
  factory :question do
    user_id { "" }
    title { "" }
    body { "" }
    pd_tag_id { "" }
    tech_tag_id { 1 }
  end
end
