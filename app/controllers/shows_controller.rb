# frozen_string_literal: true

class ShowsController < ApplicationController

  def index
    @shows = Show.first(50)
  end

end
