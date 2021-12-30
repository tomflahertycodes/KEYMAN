class ConsultantsController < ApplicationController
  def index
    @consultants = Consultant.all
  end

  def show
    @consultant = Consultant.find(params[:id])
  end

  def new
    @consultant = Consultant.new
  end
end
