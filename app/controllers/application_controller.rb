class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper :all

  protect_from_forgery with: :exception

  before_filter :current_user_profile

  helper_method :current_user_has_essay_for_current_year?
  helper_method :is_admin?

  before_filter do
    if request.ssl? && Rails.env.production?
      redirect_to :protocol => 'http://', :status => :moved_permanently
    end
  end

  def current_user_profile
  	if user_signed_in?
  		@profile = Profile.find_by user_id: current_user.id
      @essay = current_user.essay.find_by year: (Time.zone.now.year)
  	end
  end

  def user_has_profile?
  	if current_user.profile != nil
  		return true
  	end
  	return false
  end

  def current_user_has_essay_for_current_year?
    if user_signed_in?
      @essay = current_user.essay.find_by year: (Time.zone.now.year)
    end
    if @essay && !@essay.new_record?
      return true
    end
    return false
  end

  def owns_essay?
    if current_user.id == @essay.user_id
      return true
    else
      return false
    end
  end

  def owns_profile?
    if current_user.id == @profile.user_id
      return true
    else
      return false
    end
  end

  def is_admin?
    if (current_user.profile and current_user.profile.userType == "Admin")
      return true
    else
      return false
      end
  end

end
