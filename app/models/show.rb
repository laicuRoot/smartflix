# frozen_string_literal: true

require_relative './application_record'

class Show < ApplicationRecord
    enum show_type: { 'Movie': 0, 'TV Show': 1 }

    validates :show_type, :show_id, :title, :director, :description, :release_year, presence: true
    validates :show_type, inclusion: { in: %w(Movie TV Show) }
end
