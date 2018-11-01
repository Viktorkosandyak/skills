class BoxersController < ApplicationController

  def new
    @boxer = Boxer.new
  end

  def index
    @boxers = Boxer.all
  end

  def show
  end

  def create
    # binding.pry
    Boxer.create!(boxer_params)
    redirect_to boxers_path
  end

  private

    def boxer_params
      params.require(:boxer).permit(:name, :weight)
    end


  
end
