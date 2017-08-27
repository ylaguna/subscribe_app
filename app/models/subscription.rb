class Subscription < ApplicationRecord
    validates_email_format_of :email    
    validate :only_one_subscription_per_day

    def only_one_subscription_per_day
        this_email = self.email
        
        created_today = Subscription.where("created_at > (?)", Time.now.beginning_of_day)
                    .where(email: this_email).any?

        errors.add(:email, "You can only subscribe once a day.") if created_today
    end
end