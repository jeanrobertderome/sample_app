class SessionsController < ApplicationController
  
  def new
    end

    def create
        user = User.find_by_email(params[:session][:email])
        if user && user.authenticate(params[:session][:password])
          sign_in user
<<<<<<< HEAD
          redirect_back_or user
=======
                redirect_to user
>>>>>>> fe00016b9970299705ff3367cdba32c17d9b97c1
        else
          flash.now[:error] = 'Invalid email/password combination'
          render 'new'
        end
      end

<<<<<<< HEAD
    def destroy
   end
=======
      def destroy
          sign_out
          redirect_to root_path
        end
>>>>>>> fe00016b9970299705ff3367cdba32c17d9b97c1
  
end
