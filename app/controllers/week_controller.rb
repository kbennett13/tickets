class WeekController < ApplicationController
  def show
    @start_date = Date.today.prev_day Date.today.wday
    @end_date = @start_date + 1.week - 1.day
  end
end
