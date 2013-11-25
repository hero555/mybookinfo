class ListController < ApplicationController
  def index
  	@bookinfo = Binfo.all
  end

  def del
  	@bookinfo = Binfo.find(params[:id])
  	@bookinfo.destroy
  	redirect_to :action => "index"
  end
end
