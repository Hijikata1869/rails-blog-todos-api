module Api
  class AuthController < ApplicationController
    def create
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        token = create_token(user.id)
        render json: { access: token }, status: :ok
      else
        # ログインに失敗した旨をフロントエンドに送信
        render json: { message: 'FAILED'}, status: 400
      end
    end
  end
end