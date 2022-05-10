# frozen_string_literal: true

require 'rails_helper'
require 'rake'

Rails.application.load_tasks

RSpec.describe 'rake run', type: :task do

    let(:file_path) { './spec/tasks/test.csv' }
    let(:task) { Rake::Task['seed_db:run'].invoke(file_path) }

    it 'creates records in the database' do
        expect { task }.to change(Show, :count).by(1)
    end

end