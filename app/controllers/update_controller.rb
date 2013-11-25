class UpdateController < ApplicationController
  def index
  	@info = Binfo.find(params[:id])
  end

  def result
  end

  def confirm
    @info = @confirm_info
    render :action => 'result.html.erb'
  end

  def edit
   if request.post? then
   	  @info= Binfo.find(params[:id])
      @info.title = params['title']
      @info.author = params['author']
      @info.page = params['page']
      @info.date_available = params['date_available']
    if @info.save then
      @info.save
      @confirm_info = @info
      render :action => 'confirm.html.erb'
    else
      @error = !@info.save
      render :action => 'error.html.erb'
    end
  end
 end
end
