
class LandingController < ApplicationController
  
  layout "landing"

  # GET /
  def index
  end

  # POST /beta-signup
  def beta_signup
    signup = BetaSignup.new(_beta_signup_params)
    if signup.save
      set_message "Thanks!"
    else
      set_message "Unable to accept e-mail."
    end

    redirect_to root_path
  end


  protected

  def _beta_signup_params
    params.required(:signup).permit(:name, :email)
  end

end
