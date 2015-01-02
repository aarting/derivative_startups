class NounsController < ApplicationController
  before_action :authenticate_wordsmith!
  before_action :set_noun, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @nouns = Noun.all
    respond_with(@nouns)
  end

  def show
    respond_with(@noun)
  end

  def new
    @noun = Noun.new
    respond_with(@noun)
  end

  def edit
  end

  def create
    @noun = Noun.new(noun_params)
    @noun.save
    respond_with(@noun)
  end

  def update
    @noun.update(noun_params)
    respond_with(@noun)
  end

  def destroy
    @noun.destroy
    respond_with(@noun)
  end

  private
    def set_noun
      @noun = Noun.find(params[:id])
    end

    def noun_params
      params.require(:noun).permit(:name)
    end
end
