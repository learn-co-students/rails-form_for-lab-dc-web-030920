class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def edit
        @student = Student.find(params[:id])
    end

    def create
        # @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        @student = Student.create(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def update
        @student = Student.find(params[:id])
        # @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private

      def student_params(*args)
          params.require(:student).permit(*args)
      end

end


# class StudentsController < ApplicationController
#     def show
#       @student = Student.find(params[:id])
#     end
  
#     def new
#       @student = Student.new
#     end
  
#     def edit
#       @student = Student.find(params[:id])
#     end
  
#     def create
#       @student = Student.new(student_params)
#       @student.save
#       redirect_to student_path(@student)
#     end
  
#     def update
#       @student = Student.find(params[:id])
#       @student.update(student_params)
#       redirect_to student_path(@student)
#     end
  
#     private
  
#     def student_params
#       params.require(:student).permit!
#     end
#   end