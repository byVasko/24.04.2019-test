class UserparamsController < ApplicationController
before_action :authenticate_user!

  def new
    @userparam = Userparam.new
  end
  
  def create
    @userparam = current_user.build_userparam(profile_params)
    if @userparam.save
      redirect_to userparam_path(@userparam.id)
    end
    
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
private

  def profile_params
    params.require(:userparam).permit(:user_id, :firstname, :lastname, :age)
  end
  
end
