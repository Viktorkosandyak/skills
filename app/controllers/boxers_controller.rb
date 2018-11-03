class BoxersController < ApplicationController

  def new
    @boxer = Boxer.new
  end

  def index
    @boxers = Boxer.all
  end

  def show 
    @boxer = Boxer.find(params[:id]) 
  end

  def edit
    @boxer = Boxer.find(params[:id])
  end

  def create
    # binding.pry
    @boxer = Boxer.new(boxer_params)
    if @boxer.save
    redirect_to @boxer
    else
      render 'new'
    end
  end

  def update
    @boxer = Boxer.find(params[:id])

    if @boxer.update(boxer_params)
      redirect_to @boxer
    else
      render 'edit'
    end
  end

  def destroy
    @boxer = Boxer.find(params[:id])
    @boxer.destroy

    redirect_to boxers_path
  end

  private

    def boxer_params
      params.require(:boxer).permit(:name, :weight)
    end


  
end
