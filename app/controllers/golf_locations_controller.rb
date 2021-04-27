class GolfLocationsController < ApplicationController
  def index
    @golf_locations = GolfLocation.all
  end

  def new
    @golf_location = GolfLocation.new
  end

  def create
    @golf_location = GolfLocation.new(golf_location_params)

    if @golf_location.save
      redirect_to @golf_location
    else
      render :new
    end
  end

  def edit
    @golf_location = GolfLocation.find(params[:id])
  end

  def update
    @golf_location = GolfLocation.find(params[:id])

    if @golf_location.update(golf_location_params)
      redirect_to @golf_location
    else
      render :edit
    end
  end

  def destroy
    @golf_location = GolfLocation.find(params[:id])
    @golf_location.destroy

    redirect_to golf_location_path
  end

  private

  def golf_location_params
    params.require(:golf_score).permit(:date, :hole_1, :hole_2, :hole_3, :hole_4, licence_ids: [], language_ids: [], medium_ids: [], language_type_ids: [], time_type_ids: [], changes_type_ids: [], skills_type_ids: [], modal_type_ids: [], format_type_ids: [])
  end
end
