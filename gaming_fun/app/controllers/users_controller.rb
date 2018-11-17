class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @user = User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      #なにで失敗したか知らせる処理を加える
      flash.now[:notice] = "ユーザー登録に失敗しました。"
      render :new
    end
  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
