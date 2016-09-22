class ProfilesController < ApplicationController
  def new
    @profile = Profile.new unless current_user.profile
    redirect_to profile_path if current_user.profile
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to profile_path
    else
      flash[:notice] = "Profile not created"
      render :edit
    end
  end

  def update
    @profile = current_user.profile
    @profile.update(profile_params)
    if @profile.save
      redirect_to profile_path
    else
      flash[:notice] = "Profile not created"
      render :edit
    end
  end

  def edit
    @profile = current_user.profile
  end

  def show
    @profile = params[:username] ? Profile.find_by(username: params[:username]) : current_user.profile
  end

  private

    def profile_params
      params.require(:profile).permit(:username, :phone, :bio, :email, :city, :birthday)
    end
end
