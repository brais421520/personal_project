class GolfScoresController < ApplicationController
  def index
    @golf_scores = GolfScore.all
  end

  def new
    @golf_score = GolfScore.new
    @golf_location = GolfLocation.new
  end

  def create
    @golf_score = GolfScore.new(golf_score_params)
    @golf_location = GolfLocation.new(golf_location_params)

    if @golf_score.save
      redirect_to @golf_scores
    else
      render :new
    end
  end

  def edit
    @golf_score = GolfScore.find(params[:id])
  end

  def update
    @golf_score = GolfScore.find(params[:id])

    if @golf_score.update(golf_score_params)
      redirect_to @golf_score
    else
      render :edit
    end
  end

  def destroy
    @golf_score = GolfScore.find(params[:id])
    @golf_score.destroy

    redirect_to golf_path
  end

  private

  def golf_location_params
    params.require(:golf_location).permit(:name)
  end

  def golf_score_params
    params.require(:golf_score).permit(:date, :hole_1, :hole_2, :hole_3, :hole_4, :hole_5, :hole_6, :hole_7 , :hole_8, :hole_9, :out, :hole_10, :hole_11, :hole_12, :hole_13, :hole_14, :hole_15, :hole_16, :hole_17, :hole_18, :out, :total, :handicap_comp)
  end
end