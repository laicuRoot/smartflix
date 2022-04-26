# frozen_string_literal: true

require 'csv'
require_relative '../../../app/models/show.rb'
require 'pry'


module Tasks
  module Seeds
    class SeedDB

      include Rake::DSL

      def initialize
        namespace :exec do
          namespace :seeds do
            namespace :seed_db do
              desc "Seed the DB with CSV data"
              task :run, %i[file_path] => :environment do |_task, args|
                @file_path = args[:file_path]
                import_data
              end
            end
          end
        end
      end

      private 

      attr_reader :file_path

      def import_data
        shows = []
        data = parse_shows_csv(shows)
        rename_key(data)
        Show.import(data)
      end
      
      def parse_shows_csv(shows)
        CSV.foreach(file_path, headers: true) do |row|
            data_hash = row.to_h
            shows << data_hash
        end 
        shows
      end
  
      def rename_key(data)
        data.each { |show| show["show_type"] = show.delete "type" }
      end

    end
  end
end

Tasks::Seeds::SeedDB.new
