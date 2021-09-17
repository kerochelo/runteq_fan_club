class BoardsController < ApplicationController
  def index
    @boards = Board.all.order(created_at: :desc)
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path, success: "登録しました"
    else
      flash.now['danger'] = "登録できませんでした。必須項目や文字数に問題がないかご確認ください"
      render :new
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  private

  def board_params
    params.require(:board).permit(:title, :why, :why2, :url, :name)
  end

end
