# frozen_string_literal: true

class ShowsController < ApplicationController
  include ShowsHelper

  def index
    @data = Show.all.first(50)
  end

end
