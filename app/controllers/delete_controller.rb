class DeleteController < ApplicationController
  def index
  	@book_info = Binfo.find(params[:id])
  end

  def del
  	@book_info = Binfo.find(params[:id])
  	@book_info.destroy
  	render :action => "result"
  end
end
