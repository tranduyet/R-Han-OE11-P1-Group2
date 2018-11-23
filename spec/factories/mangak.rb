include ActionDispatch::TestProcess
FactoryBot.define do
  factory :mangak, class: Mangak do
    name "Tho bay mau"
    description "abc"
    picture {fixture_file_upload(Rails.root.join('app', 'assets', 'images', '1.jpeg'), 'image/jpeg')}
    association :genre
    association :author
    # after :build do |mangak|
    #   genre = FactoryBot.create :genre
    #   author = FactoryBot.create :author
    #   mangak.genre = genre
    #   mangak.author = author
  end
end

