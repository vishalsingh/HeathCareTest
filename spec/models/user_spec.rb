require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.build :user }
  subject { user }

  it { should respond_to(:name) }
  it { should respond_to(:address) }

  it "should have valid factory" do
    user.should be_valid
  end

  it "should require a username" do
    FactoryGirl.build(:user, :name => "").should_not be_valid
  end
end