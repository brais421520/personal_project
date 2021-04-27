class GolfScoresController < ApplicationController
  def index
    @golf_scores = GolfScore.all
  end

  def new
    @golf_score = GolfScore.new
  end

  def create
    @golf_score = GolfScore.new(golf_score_params)

    if @golf_score.save
      redirect_to @golf_score
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

  def golf_score_params
    params.require(:golf_score).permit(:date, :hole_1, :hole_2, :hole_3, :hole_4, licence_ids: [], language_ids: [], medium_ids: [], language_type_ids: [], time_type_ids: [], changes_type_ids: [], skills_type_ids: [], modal_type_ids: [], format_type_ids: [])
  end
end