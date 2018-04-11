class RequestMailer < ApplicationMailer
  default from: "solicitudes@agendaempresaria.com"

  def request_email(request)
    @request = request
    mail(to: request.email, subject: 'Bienvenido a Agenda Empresaria')
  end

  def request_email_alert(request)
    @request = request
    mail(to: 'solicitudes@agendaempresaria.com', subject: 'Nueva solicitud de registro')
  end

end
