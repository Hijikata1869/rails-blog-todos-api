class ApplicationController < ActionController::API
  def create_token(user_id)
    payload = {exp: 24.hours.from_now.to_i, user_id: user_id}
    secret_key = Rails.application.credentials.secret_key_base
    token = JWT.encode(payload, secret_key, 'HS256')
    return token
  end

  private
  def authenticate_user
    token = request.headers['Authorization']
    begin
      decoded_token = JWT.decode(token, Rails.application.credentials.secret_key_base, true, { algorithm: 'HS256' })
      current_user = User.find(decoded_token[0]['user_id'])
      true
    rescue
      render json: { error: "Unauthorized" }, status: 401
    end
  end

end
