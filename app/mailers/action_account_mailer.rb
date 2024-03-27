# frozen_string_literal: true

class ActionAccountMailer < ApplicationMailer
  default from: "thocodehoctiengnhat@gmail.com"

  def send_email_welcome email, full_name
    @full_name = full_name
    mail(to: email, subject: "Luyenkanji.com: Chào mừng bạn đến với hệ thống!")
  end
end
