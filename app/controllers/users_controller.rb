class UsersController < ApplicationController
  def new
    @user1 = User1.new
  end

  def show
    @user1 = User1.find(params[:id])
  end
  def create
  @user1 = User1.new(user_params)
   if @user1.save
       flash[:success] = "Welcome, your account was created successfully!"
      #redirect_to controller: "users", action:'show', id: @user.id  -- another way to write the redirect path.
      redirect_to @user1
  else
      render 'new'  #this renders the new view again so that the user can try again to create an account. This means that their previous attempt was not successful.
 end
end

private
def user_params
    params.require(:user).permit(:name, :email)
    #this limits the parameters passed to name, email, password and password_confirmation, meaning that if the user sends any other data, it will be rejected. This is a very important security feature that protects the application from a variety of attacks.
end

end
