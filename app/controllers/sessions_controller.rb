class SessionsController < ApplicationController

    # GET /sessions/new
    def new
    end

    # POST /sessions
    def create
        user = User.find_by_email(params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: 'Usuario logueado correctamente'
        else
            flash.now[:notice] = 'Email o password inválidos'
            render :new
        end
    end

    # DELETE /sessions/1
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: 'Te has deslogueado correctamente'
    end
end
