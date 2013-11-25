class EntryController < ApplicationController
  def index
  end

  def result
  end

  def confirm
    @info = @confirm_info
    render :action => 'result.html.erb'
  end

  def new
   if request.post? then
    @datainfo = Binfo.new(
      :title => params['title'],
      :author => params['author'],
      :page => params['page'],
      :date_available => params['date_available']
      )
    if @datainfo.save then
      @datainfo.save
      @confirm_info = @datainfo
      render :action => 'confirm.html.erb'
    else
      @error = !@datainfo.save
      render :action => 'error.html.erb'
    end
  end
 end
end
