# frozen_string_literal: true

require 'csv'

module ShowsHelper

	FILE_PATH = './db/netflix_titles.csv'

	def parsing_data
		items = []
		CSV.foreach(FILE_PATH, headers: true) do |row|
			items << row.to_h
		end
		items
	end

end
