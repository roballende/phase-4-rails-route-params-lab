class StudentsController < ApplicationController

  def index
    # students = if params[:name]
    #   Student.by_name(params[:name])
    # else
    #   Student.all
    # end  

    students = if params[:first_name]
        Student.find_by(first_name: params[:first_name])
      elsif params[:last_name]
        Student.find_by(last_name: params[:last_name])
      else
        Student.all
      end

    # students = if params[:first_name :last_name]
    #     Student.find_by(first_name: params[:first_name] last_name: params[:last_name])
    #   else
    #     Student.all
    #   end



    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

end
