class UsersController < ApplicationController
  def index
    users = User.all 
    render component: "Users", props: { users: users}
  end 

  def new
    render component: "NewUser"
  end

  def create
    user = User.new(user_params)
    if user.save?
      
    else

    end
  end

  private 
  def user_params
    params.require*(:user).permit(:name, :email)
  end
end
