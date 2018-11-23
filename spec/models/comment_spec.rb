require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   subject { FactoryBot.create :comment }
#   it "name author correct" do
#     is_expected.to be_valid
#   end
# end
describe "content" do
  it "return a sorted array of result that match" do
    tho = create(:comment, content: "Tho bay mau")
    expect(tho.content).to eq("Tho bay mau")
  end
end


