class OrganizationMailer < ApplicationMailer
  def suggestion_email
    @organization = params[:organization]
    mail(to: ['ivan.matas2@gmail.com', 'korac.kristijan@gmail.com'], subject: 'Netko je predložio novu udrugu!')
  end
end
