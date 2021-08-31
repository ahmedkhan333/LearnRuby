class PasswordResetsController < ApplicationController


def new

end


def create
@user = User.find_by(email: params[:email])

if @user.present?
    #Send Email
    PasswordMailer.with(user: @user).reset.deliver_now
else

    redirect_to root_path, notice: "If Account Found we have sent email to that account!"

end

end






end