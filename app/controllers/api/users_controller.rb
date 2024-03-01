module Api
  class UsersController < ApplicationController
    def create
      user = User.new(user_params)
      if user.save
        # ログイン処理を追加し、accessというプロパティにアクセストークンを値でセットしてフロントエンドに送る
        render json: { data: user }, status: :ok
      else
        render json: { message: 'FAILED'}, status: 400
      end
    end

    private
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
  end
end