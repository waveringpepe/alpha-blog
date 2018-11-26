class ProfilesController < ApplicationController
  
  
  def new
    @profile = Profile.new
  end
  
  def create
   @profile= Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      flash[:success] = "Profile was successfully created"
      redirect_to article_path(@profile)
    
    else
      render 'new'
    end
  end  
  
  def edit
    
  end
  
private
  def set_profile
    @profile = Profile.find(params[:id])
  end
    def profile_params
      params.require(:profile).permit(:skype, :whatsapp, :language)
    end
    
    def require_same_user
      if current_user != @profile.user and !current_user.admin?
        flash[:danger] = "You can only edit or delete your own profile"
        redirect_to root_path
      end
    end
end