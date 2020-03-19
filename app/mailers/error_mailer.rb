class ErrorMailer < ApplicationMailer
  default from: "admin@dgulion.com"

  def notify_email
    mail(to: "yjhoon0816@gmail.com" , subject: '멋사 사이트 에러')
  end
end
