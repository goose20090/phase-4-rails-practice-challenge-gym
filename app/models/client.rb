class Client < ApplicationRecord
    has_many :gyms
    has_many :memberships

    def membership_charge_total
        self.memberships.sum(:charge)
    end
end
