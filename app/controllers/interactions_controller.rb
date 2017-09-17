class InteractionsController < ApplicationController

  before_action :set_s3_direct_post, only: [:new]

  def new
    @interaction = Interaction.new
  end

  def create
    @interaction = Interaction.new(interaction_params)
  end

  private

    def interaction_params
      params.require(:interaction).permit(:id, :photo_url)
    end

  	def set_s3_direct_post
  	  @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  	end


end
