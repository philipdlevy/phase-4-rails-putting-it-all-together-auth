class ApplicationController < ActionController::API
  include ActionController::Cookies

  # def authorized
  #   return render json:{error: "Not Authorized"}, status: :unauthorized
  #   unless session.inlcude? :user_id
  # end
end
