class UsersController < ApplicationController
  def show
    @user = @current_user
  end
 
  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user
    @user.attributes = @user.attributes.merge(params[:user])

    @user.save do |result|
      if result
        flash[:notice] = "Account updated!"
        redirect_to account_url
      else
        render :action => :edit
      end
    end
  end
end
