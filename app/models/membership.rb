class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client
    validates :charge, presence: true
    validates :gym_id, uniqueness: {scope: :client_id, message: "A membership between this client and gym already exists!"}
end
