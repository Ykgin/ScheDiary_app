class SchedulesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :destroy]
  
  def index
    @schedules = Schedule.order(:start_time)
    @current_month_schedules = filter_schedules_by_month(@schedules, Date.today.month)
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
    @diaries = Diary.where(user_id: current_user.id, created_at: @schedule.start_time.beginning_of_day..@schedule.start_time.end_of_day)
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to schedule_path
    else
      render :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to root_path
  end

  private

  def filter_schedules_by_month(schedules, month)
    schedules.select { |schedule| schedule.start_time.month == month }
  end

  def schedule_params
    params.require(:schedule).permit(:title, :start_time, :content).merge(user_id: current_user.id)
  end

end
