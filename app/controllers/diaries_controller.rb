class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)

    if @diary.save
      redirect_to diaries_path
    else
      @diaries = Diary.all
      render :index
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:content, :schedule_id).merge(user_id: current_user.id)
  end
end
