class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))

        redirect_to student_path(@student)
        # this means take me to /students/:id


        #redirect_to students_path
        # this mean take me to /students
    end

    def show
        @student = Student.find(params[:id])
    end




    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(params.require(:student).permit(:first_name, :last_name))

        redirect_to student_path(@student)
    end
end