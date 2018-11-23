require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end

  describe "associations" do
    it {is_expected.to have_many :comments}
    it {is_expected.to have_many :following}
  end

  it "has a valid factory" do
    build(:user).should be_valid
  end
end
