class DayController < ApplicationController
  def show
    @date = Date.today
  end
end
