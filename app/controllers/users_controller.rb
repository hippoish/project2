class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user).deliver_later

        format.html {redirect_to(@user, notice: 'Account was successfully created.')}
        format.json {render json: @user, status: :created, location: @user}
      else
        format.html {render action: 'new'}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
    @user = User.find(params[:user])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(:user)
      redirect_to @user, notice: 'Account was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy
    redirect_to root, notice: 'Account was successfully destroyed.s'
  end

  def email
  end

  def password_digest
  end
end
