# encoding: utf-8

FactoryGirl.define do

  #sequence :title { |n| "title#{n}" }

#  FactoryGirl.define :title do |n|
#    n.title {Factory.next(:title)}
#  end

  factory :post do
    title "Title"
    description "Minha descrição"
    published true
  end


end
