require 'rails_helper'

describe User do
  before do
    # User.create!(email:"example@email.de", password:"example")
    @user = FactoryBot.build(:user)
  end

  it "cant create user without valid email" do
    # expect(User.new(email:"dsfsd", password:"dasf")).not_to be_valid
    @user = FactoryBot.build(:user, email:"not_an_email")
    expect(@user).not_to be_valid

  end

  it "cant create user without password" do
    # expect(User.new(email:"example@email.com", password:nil)).not_to be_valid
    @user = FactoryBot.build(:user, password:nil)
    expect(@user).not_to be_valid
  end

  it "cant create user without first name" do
    expect(User.new(first_name:nil)).not_to be_valid
    # @user = FactoryBot.build(:user, first_name:nil)
    # expect(@user).to be_valid 
  end


  it "can not create user without last name" do
    expect(User.new(last_name:nil)).not_to be_valid
  end

  it "can create user with first, last name, email and password" do
    expect(@user).to be_valid
  end
  
end

describe User, type: :model do
  it "should not validate users without an email address" do
    @user = FactoryBot.build(:user, email: nil)
    expect(@user).not_to be_valid
  end
end