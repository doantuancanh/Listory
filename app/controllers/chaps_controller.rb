class ChapsController < ApplicationController
  before_action :find_story
  before_action :authenticate_user!, except: [:show]

  def show
  	@chap = @story.chaps.find(params[:id])
  end

  def new
  end

  def create
  	@chap = @story.chaps.create(chap_params)
  	if @chap.save
  	  redirect_to story_chap_path(@story, @chap.id)
  	else
  		render 'new'
  	end
  end

  def edit
  	@chap = @story.chaps.find(params[:id])
  end

  def update
  	@chap = @story.chaps.find(params[:id])
  	if @chap.update(chap_params)
  		redirect_to story_chap_path(@story, @chap.id)
  	else
  		render 'edit'
  	end
  end

  def destroy
    @chap = @story.chaps.find(params[:id])
    @chap.destroy
    redirect_to story_path(@story)
  end

  private
  def find_story
  	@story = Story.find(params[:story_id])
  end

  def chap_params
  	params.require(:chap).permit(:name, :content)
  end
end
