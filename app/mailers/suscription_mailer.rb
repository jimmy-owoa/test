class SuscriptionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.suscription_mailer.send.subject
  #
  def send_newsletter(newsletter)
    @suscriptions = Suscription.all
    @newsletter = newsletter
    @greeting = "Hi"
    @suscriptions.each do |suscription|
      mail to: suscription.email,
      subject: newsletter.title
    end

  end
end
