# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Index page", type: :feature do

    it "includes the Smartflix title" do
        visit "/"
        expect(page).to have_text("Smartflix")
    end
end