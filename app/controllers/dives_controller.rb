class DivesController < ApplicationController
  def index
    @dives = Dive.all
  end

  def show
    @dive = Dive.find(params[:id])
  end

  def new
    @dive = Dive.new
  end

  def create
    @dive = Dive.new(dive_params)

    if @dive.save
      redirect_to @dive
    else
      render :new
    end
  end

  def edit
    @dive = Dive.find(params[:id])
  end

  def update
    @dive = Dive.find(params[:id])

    if @dive.update(dive_params)
      redirect_to @dive
    else
      render :edit
    end
  end

  def destroy
    @dive = Dive.find(params[:id])
    @dive.destroy

    redirect_to diving_path
  end

  private

  def dive_params
    params.require(:dive).permit(:name, :short_name, :organization, :web_page, :words, licence_ids: [])
  end
end