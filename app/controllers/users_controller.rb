class UsersController < ApplicationController
  # before_action :set_user, only: %i[ destroy ]


  # GET /users/new
  def new
    @user = User.new
  end

  def login
    @user = User.new
  end

  def authenticate
    @user = User.find_by(email: params[:user][:email])
    if @user&.authenticate(params[:user][:password])
      render json: @user
    else
      flash.now[:alert] = "Invalid email or password."
      render json: { errors: "Invalid email or password." }, status: :unprocessable_entity
    end
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user
      @user.update(user_params)
    else
      @user = User.create(user_params.merge(verified: true))
    end
    if @user.valid?
      render json: @user
    else
      render json: { errors: @user.errors.full_messages.to_sentence }
    end
  end


  def edit
    @user = User.find_by(id: params[:id])
    if @user
      render :edit
    else
      render json: { errors: "User not found" }, status: :not_found
    end
  end

  def update 
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
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
      params.require(:user).permit(:first_name, :last_name, :email, :admin, :password)
    end
end
