namespace :send_mail_new_post do
  desc "Send mail new post in week"

  task execute: :environment do
    Subscribe.where(status: :subscribed).each do |subscribe|
      SubscribeMailer.send_mail_new_post(subscribe).deliver_later
    end
  end
end
