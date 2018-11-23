require 'rails_helper'

RSpec.describe Mangak, type: :model do
  it "return a sorted array of result that match" do
    @mangak = create(:mangak, name: "kkkkk")
    @abc = create(:mangak, name: "abc")
    expect(Mangak.search_manga("k")).to eq [@mangak]
    expect(Mangak.search_manga("k")).not_to eq [@abc]
  end
end
