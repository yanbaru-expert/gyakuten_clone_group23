class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def show
  end
end
