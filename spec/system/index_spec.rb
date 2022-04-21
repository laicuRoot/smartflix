# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Index page", type: :feature do

    let(:data) { @data_csv }


    it "includes the Smartflix title" do
        visit "/"
        expect(page).to have_text("Smartflix")
    end

    it "includes all the shows titles" do
        visit "/" 
        expect(page).to have_text(title)
    end

    
end