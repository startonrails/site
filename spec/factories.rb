# encoding: utf-8

FactoryGirl.define do

  factory :post do
    title "Title"
    description "Minha descrição"
    published true
  end

  factory :user do
    name "Homer Simpson"
    email "homer@simpsons.com"
    login "homersimpson"
    password "simpsons"
    password_confirmation "simpsons"
  end
end
