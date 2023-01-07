class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(attributes)
        self.freebies << Freebie.create(item_name: attributes[:item_name], value: attributes[:value], dev: attributes[:dev])
    end

    def self.oldest_company
        min_year = Company.all.minimum('founding_year')
        Company.find_by("founding_year = #{min_year}")
    end
end
