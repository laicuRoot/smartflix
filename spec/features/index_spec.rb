# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Index page", type: :feature do

    it "includes the Smartflix header" do
        visit "/"
        expect(page).to have_text("Smartflix")
    end

   context "when titles are given" do
    it "includes the shows titles" do 
      visit "/" 
      
      csv_data.first(5).each do |show|
        expect(page).to have_text(show['title'])
      end
    end
   end
  
end