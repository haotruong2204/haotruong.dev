namespace :visible_post do
  desc "Visible Post"

  task execute: :environment do
    Post.where("published_at > ? AND published_at < ?", Time.zone.now - 2.minutes, Time.zone.now + 2.minutes).update_all(status: :visible)
  end
end
