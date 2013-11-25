class RetrieveController < ApplicationController
  def index
    render :action => 'index.html.erb'
  end

  def find
  	if params[:key].blank?
  	render :action => 'error.html.erb'
    else
  	@b_info = Binfo.where("title like ? OR author like ?", "%#{params[:key]}%", "%#{params[:key]}%")
  	@count = @b_info.length
    render :action => 'result.html.erb'
    end
  end
end
