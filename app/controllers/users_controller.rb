class UsersController < ApplicationController
    def index
      @users=User.all
    end  
    def new
        @user = User.new
    end
    def create 
      puts "asdsadsadadasdasdsadsddddd"
        #@user = User.new(username: params[:username], email: params[:email], password: params[:password])
        @user = User.new(user_params)
       
        if @user.save
          redirect_to users_url
        else
          render :new
        end     
    end
    def edit
      @user = User.find(params[:id])
    end  

    private
    def user_params        
        params.require(:user).permit(:username, :email, :password)
    end   

end
