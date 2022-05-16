# frozen_string_literal: true

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.use_parent_strategy = true
  end
end