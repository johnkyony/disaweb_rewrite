class OutbreaksController < ApplicationController
  def index
    @outbreaks = Outbreak.order('created_at DESC')
  end

  def new
    @outbreak = Outbreak.new
  end
  
  def created
    @outbreak = Outbreak.new(outbreak_params)
    if @outbreak.save 
      flash[:success] = "Outbreak added"
      redirect_back(fallback_location: root_path)
    else
      render 'new'
    end
  end
  
  def show
    @outbreak = Outbreak.find(params[:id])
  end
  
  private 
  
  def outbreak_params
    params.require(:outbreak).permit(:diseases ,:raw_address,  :area , :latitude , :longitude , :active)
    
  end
end
