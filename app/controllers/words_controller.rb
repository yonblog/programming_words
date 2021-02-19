class WordsController < ApplicationController
  before_action :set_word, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]
  def index
    @words = Word.includes(:user).order("created_at DESC")
  end

  def new
    @word = Word.new
  end

  def create
    Word.create(word_params)
  end

  def destroy
    word = Word.find(params[:id])
    word.destroy
  end
  
  def edit
  end

  def update
    word = Word.find(params[:id])
    word.update(word_params)
  end

  def show
    @comment = Comment.new
    @comments = @word.comments.includes(:user)
  end

  def search
    @words = Word.search(params[:keyword])
  end
  
  private
  def word_params
    params.require(:word).permit(:name, :language, :meaning, :example, :resources).merge(user_id: current_user.id)
  end
  
  def set_word
    @word = Word.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
