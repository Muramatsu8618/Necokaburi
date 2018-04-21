class UsersController < ApplicationController
  # before_action :logged_in_user, only: [:edit, :update]
  # before_action :correct_user, only: [:edit, :update]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to signin_path, notice: '登録が完了しました'
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

  # 動的にテーブル作成
    # require "ActiveRecode"
    #
    # ActiveRecode::Base.establish_connection(
    #   :adapter => 'mysql2',
    #   :database => 'necokaburi_development'
    # )
    #
    #   ActiveRecode::Base.connection.create_table(table_name)
    #   table_name = "rating_#{user.id}"
    #     t.integer :user_id
    #     t.integer :totalrate
    #     t.datetime :ratehistory
    #     t.string :site1
    #     t.string :site2
    #     t.string :site3
    #     t.string :site4
    #     t.string :site5
    #   end
    #
    # rating  = User.new(ActiveRecode::User) do |c|
    #   c.table_name = table_name
    # gender
    # Object.const_set(model_name, rating)

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :birthday, :gender, :phone, :address)
  end
end
