# frozen_string_literal: true

class ShowsController < ApplicationController
  include ShowsHelper
  
  def index
    @shows = csv_data.first(20)
  end

end
