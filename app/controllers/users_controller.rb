class UsersController < ApplicationController

    # GET /users/1
    def show
        @user = User.find(params[:id])
    end

    # GET /users/new
    def new
        @user = User.new
    end

    # POST /users/
    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
                session[:user_id] = @user.id
                format.html { redirect_to root_url(@user), notice: "User was successfully created." }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
