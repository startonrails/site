require 'spec_helper'

describe User do
  subject {FactoryGirl.create(:user)}

  it {should respond_to(:name)}
  it {should respond_to(:email)}
  it {should respond_to(:login)}
  it {should respond_to(:password)}
  it {should respond_to(:password_confirmation)}

  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:login)}
  it {should validate_presence_of(:password)}

  it {should validate_uniqueness_of(:email)}
  it {should validate_uniqueness_of(:login)}

  it {should_not allow_value('viv').for(:password)}
  xit {should allow_value('vivi').for(:password)}
  it {should_not allow_value('vivi.com').for(:email)}
  it {should_not allow_value('vivi@.com').for(:email)}
  it {should allow_value('vivi@vivi.com').for(:email)}
end
