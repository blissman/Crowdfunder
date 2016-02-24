class PledgesController < ApplicationController

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)
    # will probably need to refactor for ajax
    if @pledge.save
      redirect_to project_path
    else
      render :new
    end
  end

end

private
def pledge_params
  params.require(:pledge).permit(:amount)
end
