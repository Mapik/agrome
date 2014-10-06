# encoding: UTF-8
class UserMailer < ActionMailer::Base
  default from: "reset@agrome.pl"

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Odzyskiwanie hasła - Agrome"
  end

end
