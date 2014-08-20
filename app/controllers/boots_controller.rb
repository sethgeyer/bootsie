class BootsController < ApplicationController
  def index
    @boots = Boot.all
    @string = <<SAMPLES
table => generic table w/ lines separating rows, good spacing <br/>
table-striped => striped alternating rows<br/>
table-bordered => borders out the entire table<br/>
table-hover => higlights the row you mouseover<br/>
SAMPLES

end

  def new
    @boot = Boot.new
  end

  def create
    @boot = Boot.new
    @boot.name = params[:boot][:name]
    @boot.description = params[:boot][:description]
    @boot.amount = params[:boot][:amount]
    @boot.sex = params[:boot][:sex]
    @boot.save!
    redirect_to root_path
  end


  def grid

  end

  def blank

  end

  end
