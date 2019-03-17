FactoryBot.define do
  factory :designation do
    name {  Faker::Movies::StarWars.character  }
  end
end