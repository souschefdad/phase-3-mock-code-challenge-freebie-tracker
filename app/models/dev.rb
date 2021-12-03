class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        # accepts an item_name
        # tells if developer has item in question
        # Dev.first.received_one("Death Crystal") => True if Dev has freebie
        !self.freebies.where(item_name: item_name).empty?
    end

    def give_away(recipient_dev, freebie)
        # accepts Dev and Freebie instance
        # only gives Freebie to recipient, 
        # if Dev(self) has Freebie

        self.freebies.where(
            # STUCK: Paused

    end

end
