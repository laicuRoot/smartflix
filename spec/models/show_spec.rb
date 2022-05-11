# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Show, type: :model do
  let(:show) { create(:show) }
  let(:title) { show.title }
  let(:show_type) { show.show_type }

  it "is a valid with the presence of show_type, show_id and title" do
    expect(show).to be_valid
  end

  context "when title is not present" do
    let(:title) { nil }
    
    it "is invalid" do
      expect(subject).to be_invalid
    end
  end

  context "when show_type is not 'Movie' or 'TV Show' " do
    let(:show_type) { 'Short' }

    it "is invalid" do
      expect(subject).to be_invalid
    end 
  end
end
