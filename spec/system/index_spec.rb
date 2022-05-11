# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Index page", type: :system do

  let(:show) { create(:show, title: "Dick Johnson Is Dead") }

    it "includes the Smartflix header" do
      get "/"
      expect(response.body).to include("Smartflix")
    end

   context "when titles are given" do
    it "includes the show title" do 
      get "/" 
      expect(response.body).to include(show.title)
    end
   end
  
end