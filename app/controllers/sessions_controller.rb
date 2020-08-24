class SessionsController < ApplicationController
    def new
    end
    
    def create 
        user = User.find_by(userid: params[:userid]) 
        if user && user.authenticate(params[:password]) 
            log_in user
            redirect_to '/home' 
        else flash[:alert] = '아이디 또는 비밀번호가 잘못되었습니다.' 
            redirect_to new_session_path 
        end 
    end
    
    def destroy 
        log_out 
        redirect_to root_url 
    end


end
