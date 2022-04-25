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
      Show.all.first(5).each do |show|
        title = show.title
        expect(page).to have_text(title)
      end
    end

   end

end