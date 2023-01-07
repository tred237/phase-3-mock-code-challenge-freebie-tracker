class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one(item_name)
        !!self.freebies.find_by(item_name: item_name)
    end

    def give_away(attributes)
        attributes[:freebie].update(dev: attributes[:dev]) if self.freebies.ids.include?(attributes[:freebie].id)
    end
end


# d = Dev.find(1)
# d2 = Dev.find(3)
# ft = Freebie.find(9)
# ff = Freebie.find(7)
# d.give_away(dev: d2, freebie: ft)
# d.give_away(dev: d2, freebie: ff)