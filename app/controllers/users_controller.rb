class UsersController < ApplicationController
  # before_action :logged_in_user, only: [:edit, :update]
  # before_action :correct_user, only: [:edit, :update]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: '登録が完了しました'
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end

  def edit
    @user = User.find_by(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to root_path, notice: 'アカウント設定を更新しました'
    else
      flash.now[:alert] = "アカウント設定に失敗しました"
      render :template => "pages/index"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :birthday, :gender, :phone, :address)
  end
end
