class SignupsController < ApplicationController

def new
     @signup = Signup.new
end

def create
    @signup = Signup.new(signup_params)
    if @signup.save  #if successfully saved
        redirect_to '/thanks'
    end
end
# this line of codes ensures and authorizes that a signup is required when a user utilizes our form and the allowed/permitted attribute is email
private
def signup_params
    params.require(:signup).permit(:email)
end

end