class JobsController < ApplicationController
  def index
    @restaurants = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job =  Job.new
  end
end
