# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Index page", type: :feature do

    it "includes the Smartflix title" do
        visit "/"
        expect(page).to have_text("Smartflix")
    end

    it "includes all the shows titles" do
        visit "/" 
        expect(page).to have_text('Mismatched 2020')
    end
    
end