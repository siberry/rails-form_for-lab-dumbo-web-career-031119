class SchoolClassesController < ApplicationController

  def new
    @schoolClass = SchoolClass.new
  end

  def show
    @schoolClass = SchoolClass.find(params[:id])
  end

  def create
    @schoolClass = SchoolClass.create(school_class_params)
    redirect_to @schoolClass
  end

  def edit
    @schoolClass = SchoolClass.find(params[:id])
  end

  def update
    @schoolClass = SchoolClass.update(school_class_params)
    redirect_to @schoolClass
  end

  private
    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end
end
