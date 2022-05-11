# frozen_string_literal: true

require 'csv'
require_relative '../../app/models/show.rb'


module Tasks
    class SeedDB

      include Rake::DSL

      def initialize
        namespace :extract_shows_from_csv do
          desc "Seed the DB with CSV data"
          task :run, %i[file_path] => :environment do |_task, args|
            @file_path = args[:file_path]
            raise "you must provide file path" if @file_path.nil?
            import_data
          end
        end
      end

      private 

      attr_reader :file_path

      def import_data
        data = parse_shows_csv
        Show.import(data)
      end
      
      def parse_shows_csv
        CSV.foreach(file_path, headers: :true, header_converters: :symbol).each_with_object([]) do |csv_obj, array|
          obj = csv_obj.to_h
          obj[:show_type] = obj.delete :type
          array << obj
        end
      end

    end
end

Tasks::SeedDB.new
