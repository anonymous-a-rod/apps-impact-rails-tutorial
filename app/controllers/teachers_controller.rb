class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teachers_path, notice: 'Teacher has successfully been created'
    else
      render :new
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teacher_params)
      redirect_to teachers_path, notice: 'Teacher has successfully been updated'
    else 
      render :edit
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path, notice: 'Teacher has successfully been deleted'
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :biography)
  end

end