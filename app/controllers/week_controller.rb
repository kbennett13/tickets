class WeekController < ApplicationController
  def show
    @start_date = Date.today.prev_day Date.today.wday
  end
end
