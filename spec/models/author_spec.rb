require 'rails_helper'

RSpec.describe Author, type: :model do
  let(:author) { FactoryBot.create :author }
  it "name author correct" do
    expect(author.name).to eq("abc")
  end
end
