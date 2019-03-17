FactoryBot.define do
  factory :designation do
    name { Faker::StarWars.character  }
  end
end