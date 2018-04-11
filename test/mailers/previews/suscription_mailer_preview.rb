# Preview all emails at http://localhost:3000/rails/mailers/suscription_mailer
class SuscriptionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/suscription_mailer/send
  def send
    SuscriptionMailer.send
  end

end
