class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"


def comment_added
  @place = comment.place
  @place_owner = @place.user

  mail(to: "pgfuentes2015@gmail.com", 
    subject: "A comment has been added to your place")
end

end
