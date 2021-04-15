class CommentsController < ApplicationController
  
  # def index
  #   @text = Comment.new
  # end
  
  def new
    # @topic_id = params[:topic_id]
    @text = Comment.new
    @text.topic_id = params[:topic_id]
  end
 
  def create
    @text = current_user.comments.new(text_params)
       # binding pry
    if @text.save
     
      redirect_to topics_path, success: 'コメントを保存しました'
    else
      flash.now[:danger] = "コメント保存できませんでした"
      render :new
    end
  end
  
  private
  def text_params
    params.require(:comment).permit(:text, :user_id, :topic_id)
  end
end

