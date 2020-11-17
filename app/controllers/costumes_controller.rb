class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @costumes = Costume.all
  end

  def show
    find_costume
    @user = current_user
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user = current_user
    @costume.save
    redirect_to costume_path(@costume)
  end

  def destroy
    find_costume
    @costume.destroy
    redirect_to dashboard_index_path
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :size, :price_per_day, :category, :description, :photo)
  end

  def find_costume
    @costume = Costume.find(params[:id])
  end
end
