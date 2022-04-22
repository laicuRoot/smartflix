# frozen_string_literal: true

require 'csv'
require_relative '../../../app/models/show.rb'

desc "Seed the DB with CSV data"

task db_seed: :environment do

    def create_records(shows)
      data = parse_shows_csv(shows)
      rename_key(data)
      Show.import(data) 
    end

    def parse_shows_csv(shows)
      CSV.foreach('./db/netflix_titles.csv', headers: true) do |row|
          data_hash = row.to_h
          shows << data_hash
      end 
      shows
    end

    def rename_key(data)
      data.each { |show| show["show_type"] = show.delete "type" }
    end

    shows = []
    data = parse_shows_csv(shows)
    rename_key(data)
    Show.import(data) 

end
