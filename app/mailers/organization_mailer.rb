class OrganizationMailer < ApplicationMailer
  def suggestion_email
    mail(to: 'ivan.matas2@gmail.com', subject: 'Netko je predložio novu udrugu!')
  end
end
