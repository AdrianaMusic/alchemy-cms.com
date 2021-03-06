class ShowcasesController < ApplicationController
  include Alchemy::ConfigurationMethods
  include Alchemy::AbilityHelper
  include Alchemy::ControllerActions

  def index
    @showcases = Showcase.published.order('RANDOM()')
    if params[:keyword]
      @showcases = @showcases.tagged_with(params[:keyword])
    end

    @keywords = Showcase.tag_counts.order('taggings_count DESC').limit(5)
  end

  def new
    @showcase = Showcase.new
  end

  def create
    @showcase = Showcase.new(showcase_params)

    if @showcase.save
      ShowcasesMailer.registration(@showcase).deliver
      redirect_to showcases_path, notice: 'Showcase was successfully created.'
    else
      render action: 'new'
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def showcase_params
    params.require(:showcase).permit(:title, :url, :creator, :creator_url, :tag_list, :screenshot, :retained_screenshot)
  end
end
