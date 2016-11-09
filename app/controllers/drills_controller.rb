class DrillsController < ApplicationController
	def create
    @article = Article.find(params[:article_id])
    @drills = @article.drills.create(drill_params)
    redirect_to article_path(@article)
  end
 
  private
    def drill_params
      params.require(:drill).permit(:drill_name, :drill_title, :drill_category, :drill_shortdesc, :drill_longdesc, :drill_titleimage, :drill_listimage, :drill_keyfeatures)
    end
end