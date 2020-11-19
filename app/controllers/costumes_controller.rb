class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @costumes = Costume.where(sql_query, query: "%#{params[:query]}%")
    else
       @costumes = policy_scope(Costume)
    end

  end

  def show
    find_costume
    authorize @costume
    @user = current_user
  end

  def new
    @costume = Costume.new
    authorize @costume
  end

  def create
    @costume = Costume.new(costume_params)
    authorize @costume
    @costume.user = current_user
    if @costume.save
      current_user.lender = true
      current_user.save
      redirect_to costume_path(@costume)
    else
      render :new
    end
  end

  def destroy
    find_costume
    authorize @costume
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
