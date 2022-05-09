# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Index page", type: :feature do

    it "includes the Smartflix header" do
        visit "/"
        expect(page).to have_text("Smartflix")
    end

   context "when titles are given" do
    it "includes the first 50 shows titles" do 
      visit "/" 
      
      expect(page).to have_text("Dick Johnson Is Dead")
      expect(page).to_not have_text("Dharmakshetra")
    end
   end
  
end