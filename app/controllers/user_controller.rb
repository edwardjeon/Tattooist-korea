class UserController < ApplicationController
    def index
    end
    
    def register
        userid = params[:userid]
        password = params[:password]
        name = params[:name]
        email = params[:email]
        phone = params[:phone]
        
        User.create(userid: userid, password: password, name: name, email: email, phone: phone)
        
        redirect_to '/user'
    end
end
