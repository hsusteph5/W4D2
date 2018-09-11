class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
    
  end
  
  def show
    @cat = Cat.find_by(id: params[:id])
    
    render :show
  end
  
  def new
    render :new
  end
  
  def create
    
    @cat = Cat.new(cat_params)
    
    #redirect to show (once we make the cat, it shows you the page with the cat on it)
    if @cat.save
      redirect_to cat_url(@cat)
    else 
      render :new
    end
  end
  
  def edit
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end
  
  def update
    @cat = Cat.find_by(id: params[:id])
    
    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      render :edit
    end
  
  end
  
  private 
  def cat_params
    params.require(:cat).permit(:name, :sex, :color, :birth_date, :description)
  end
end