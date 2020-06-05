module Api
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :null_session
    # skip_before_action :verify_authenticity_token

    include DeviseTokenAuth::Concerns::SetUserByToken
  end
end