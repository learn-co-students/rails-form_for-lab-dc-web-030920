class SchoolClassesController < ApplicationController

    def index 
        @schoolclasses = SchoolClass.all
    end

    def new
        @schoolclass = SchoolClass.new
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
      
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def create 
        @schoolclass = SchoolClass.create(allowed_params(:title, :room_numeber))
        redirect_to school_class_path(@schoolclass)
    end

    def update  
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass = SchoolClass.update(allowed_params(:title, :room_number))
        redirect_to school_class_path(@schoolclass)
    end

    private
    def allowed_params(*args)
        params.require(:school_class).permit(*args)
    end
end
