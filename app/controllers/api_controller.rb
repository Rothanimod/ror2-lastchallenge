class ApiController < ApplicationController
  before_action :authenticate_user
  private
    def authenticate_user
      user_token = request.headers['X-Api-Token']
      user_email = request.headers['X-User-Email']
      if user_token && user_email
        userm = User.find_by email: user_email
        usert = User.find_by api_token: user_token
        #Unauthorize if a user object is not returned
        if userm != usert
          return unauthorize
        end
      else
        return unauthorize
      end
    end

    def unauthorize
      head status: :unauthorized
      return false
    end
end
