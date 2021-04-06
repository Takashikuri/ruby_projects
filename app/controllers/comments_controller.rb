class CommentsController < ApplicationController
  def index
    @text = Comment.new
  end
 
  def create
    @text = current_user.text.new(text_params)
    
    if @text.save
      redirect_to topics_path success: "コメントを保存しました"
    else
      flash.now[:danger] = "コメント保存できませんでした"
      render :create
    end
  end

  private
  def text_params
    params.require(:comments).permit(:text)
  end
end

