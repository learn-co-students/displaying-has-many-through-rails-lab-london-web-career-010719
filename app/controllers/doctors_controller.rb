class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new
    @doctor.name = params[:doctor][:name]
    @doctor.save
    redirect_to doctor_path(@doctor)
  end


  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(name: params[:doctor][:name])
    redirect_to doctor_path(@doctor)
  end




# Controller End
end
