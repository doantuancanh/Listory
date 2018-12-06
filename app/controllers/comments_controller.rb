class CommentsController < ApplicationController
	before_action :find_user
	def create
    @story = Story.find(params[:story_id])
    
    @comment = @story.comments.create(comment_params)
    @comment.name = current_user.email
    @comment.save
    redirect_to story_path(@story)
  end

  def edit
  	@comment = @story.comments.find(params[:id])
  end

  def update
  	@comment = @story.comments.find(params[:id])
  	@comment.update(comment_params)
  	redirect_to story_path(@story)
  end
	
  def destroy
    @story = Story.find(params[:story_id])
    @comment = @story.comments.find(params[:id])
    @comment.destroy
    redirect_to story_path(@story)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:content, :name)
    end

    def find_user
    	@user = current_user
    end
end
