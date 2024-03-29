class SchedulesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :destroy]
  
  def index
    if user_signed_in?
      @schedules = current_user.schedules.order(:start_time)
      @current_month_schedules = filter_schedules_by_month(@schedules, Date.today.month)
    else
      @schedules = []
      @current_month_schedules = []
    end
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
    if current_user && @schedule.user == current_user
      @diaries = Diary.where(user_id: current_user.id, created_at: @schedule.start_time.beginning_of_day..@schedule.start_time.end_of_day)
    else
      redirect_to root_path
    end
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

  def user_signed_in?
    current_user.present?
  end

  def filter_schedules_by_month(schedules, month)
    schedules.select { |schedule| schedule.start_time.month == month }
  end

  def schedule_params
    params.require(:schedule).permit(:title, :start_time, :content).merge(user_id: current_user.id)
  end

end
