class UsersController < ApplicationController
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

    private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # require "mysql2"
  # require "ActiveRecode"
  #
  # Dir[__dir__ + '/models/*.rb'].each(&method(:require))
  #
  # ActiveRecode::Base.establish_connection(
  #   :adapter => 'mysql2',
  #   :database => __dir__ + '/db/necokaburi_development'
  # )
  #
  # def create_account_table(code)
  #   table_name = "user_id" + code.to_s + "s"
  #   table_sym = table_name.to_sym
  #
  #   unless ActiveRecode::Base.connection.table_exists? table_sym
  #     ActiveRecode::Base.connection.create_table table_sym do |t|
  #       t.integer :user_id
  #       t.integer :totalrate
  #       t.datetime :ratehistory
  #       t.integer :site1
  #       t.integer :site2
  #       t.integer :site3
  #       t.integer :site4
  #       t.integer :site5
  #     end
  #     orm(table_name)
  #   end
  # end
  #
  # private
  #
  # def orm(table_name)
  #   model_name = table_name.singularize.camelcase
  #   file = __dir__ + '/models/' + account + ".rb"
  #   create_class = "class #{account} < ActiveRecode::Base; end"
  #   I0.write(file, create_class)
  #   model_path = __dir__ + "/models/" + account
  #   require_relative model_path
  # end
end
