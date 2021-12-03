class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

# One dev recieving a freebie from (company)
# Company giving freebie to dev

    def give_freebie(dev, item_name, value)
        # id = 1
        # dev = "Priscilla" 
        # item_name = "hat"
        # value = 5
        # company = Flatiron
        Freebie.create(item_name: item_name, value: value, dev: dev, company: self)
    end

    def self.oldest_company
        oldest_year = Company.minimum(:founding_year)
        Company.find_by(founding_year:oldest_year)
    end

end

# c1 = Company.first
# c1.give_freebie(...)