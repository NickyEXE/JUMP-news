class UsersController < ApplicationController
  # before_action :set_user, only: %i[ destroy ]


  # GET /users/new
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user
      @user.update(user_params)
    else
      @user = User.create(user_params)
    end
    if @user.valid?
      render json: @user
    else
      render json: { errors: @user.errors.full_messages.to_sentence }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :admin)
    end
end
