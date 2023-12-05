class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    @schedule = Schedule.new
  end
end
