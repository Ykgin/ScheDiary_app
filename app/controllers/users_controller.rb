class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      @errors = current_user.errors.full_messages
      render :edit
    end

  end

  private

  def user_params
  # パスワード関連のパラメーターを取り除く
    params.require(:user).permit(:nickname, :email)
  end
end
