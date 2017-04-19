class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if @user
      signin(@user)
      render "api/users/show"
    else
      render(
        json: ["Invalid username and/or password."],
        status: 401
      )
    end
  end

  def destroy
    @user = current_user

    if @user
      signout
      render "api/users/show"
    else
      render(
        json: ["Not signed in."],
        status: 404
      )
    end
  end
end
