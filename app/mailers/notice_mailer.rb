class NoticeMailer < ApplicationMailer
  
  default from: ENV["SMTP_USER_NAME"]

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.hello.subject
  #
  def hello
    @greeting = "Hi"

    mail to: "j.s.s-0005@ezweb.ne.jp"
  end
end
