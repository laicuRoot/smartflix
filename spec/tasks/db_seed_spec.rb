# frozen_string_literal: true

require 'rails_helper'
require 'rake'
require 'pry'
Rails.application.load_tasks

RSpec.describe 'rake exec:seeds:seed_db:run', type: :task do

    let(:file_path) { './spec/tasks/test.csv' }
    let(:task) { Rake::Task['exec:seeds:seed_db:run'].invoke(file_path) }

    it 'creates records in the database' do
        expect { task }.to change(Show, :count).by(1)
    end

end