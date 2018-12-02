class ComentsController < ApplicationController
  def new
    @coment = Coment.new
  end

  def create
    @coment = Coment.new(coment_params)
    # @comet.topic_id にデータを入れる
    if @coment.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def coment_params
    params.require(:coment).permit(:text, :topic_id)
  end

end
