# frozen_string_literal: true

class ShowsController < ApplicationController
  include ShowsHelper

  def index
    @shows = parsing_data.first(50)
  end

end
