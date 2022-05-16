# frozen_string_literal: true

FactoryBot.define do
  factory :show do
      show_type { "TV Show" }
      show_id { "s_test" }
      title { "Test" }
      director { "Test_Director" }
      country { "United States" }
      release_year { 2020 }
      description { "Test description" } 
      listed_in { "test app" }
  end
end