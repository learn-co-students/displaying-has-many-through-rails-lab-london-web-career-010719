class DoctorsController < ApplicationController
    before_action :find_doctor, only: [:show, :edit, :update]

    def index
        @doctors = Doctor.all
    end

    def show
    end

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.create(doctor_params)
        redirect_to doctor_path(@doctor)
    end

    def edit
        redirect_to edit_doctor_path
    end

    def update
    end

    private 

    def find_doctor
        @doctor = Doctor.find(params[:id])
    end
    
    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end
