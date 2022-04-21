require 'csv'

module ShowsHelper
	def data_csv
		items = []
		CSV.foreach('./db/netflix_titles.csv', headers: true) do |row|
			items << row.to_h
		end
		items
	end
end
