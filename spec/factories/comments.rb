# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    name "MyString"
    email "MyString"
    description "MyText"
    post nil
    published false
    moderated false
    published_at "2012-07-04 21:23:42"
    status 1
  end
end
