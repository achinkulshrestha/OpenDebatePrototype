class ProfilesController < InheritedResources::Base

  def edit
    @profile = Profile.find_by user_id: current_user.id
  end

  private

    def profile_params
      params.require(:profile).permit(:user_id, :name, :bio, :birthday, :twitter, :url)
    end
end

