class MembershipsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def create
        membership = Membership.create!(params.permit(:gym_id, :client_id, :charge))
        render json: membership, status: :created
    end

    private

    def render_unprocessable_entity invalid
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
