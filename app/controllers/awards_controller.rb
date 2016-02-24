class AwardsController < ApplicationController

  def new
    @award = Award.new
  end

  def create
    @award = Award.new(award_params)
  end

end

private
def award_params
  params.require(:award).permit(:title, :description, :min_amount)
end
