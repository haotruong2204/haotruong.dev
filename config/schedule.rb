every 5.minutes do
  rake "visible_post:execute"
end

every :saturday, at: "8:00 am" do 
  rake "send_mail_new_post:execute"
end
