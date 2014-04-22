module EmailHelpers
  def last_sent_email
    sent_emails = ActionMailer::Base.deliveries
    sent_emails.last
  end
end

World(EmailHelpers)
