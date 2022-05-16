# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Show, type: :model do
  
  subject do
    described_class.new(title: "Test",
                        show_type: "TV Show")
    end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:show_id) }
  it { should validate_presence_of(:show_type) }

  context "when show_type is not 'Movie' or 'TV Show' " do

    it "is invalid" do
      subject.show_type = nil
      expect(subject).to be_invalid
    end 
  end
end
