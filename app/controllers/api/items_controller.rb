module Api
  class ItemsController < Api::ApplicationController
    before_action :authenticate_user!

    def index
      render json: { status: "ok", email: current_user.email }
    end
  end
end
