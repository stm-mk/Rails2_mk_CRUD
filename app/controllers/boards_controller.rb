class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :destroy, :update]

  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board=Board.new
  end

  def create
    @board=Board.new(board_params)
    if @board.save
      redirect_to @board, notice: "投稿成功！"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(board_params)
      redirect_to @board, notice: "編集成功"
    else
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_url, notice: "削除成功"
  end

  private
    def set_board
      @board = Board.find(params[:id])
    end

    def board_params
      params.require(:board).permit(:title, :body)
    end
end
