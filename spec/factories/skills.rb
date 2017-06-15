FactoryGirl.define do
  factory :skill do
    name_en {Faker::LordOfTheRings.character}
    name_ja {Faker::GameOfThrones.character}
  end
end
