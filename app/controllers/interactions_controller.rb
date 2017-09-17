class InteractionsController < ApplicationController

  def new
    @interaction = Interaction.new
  end

end
