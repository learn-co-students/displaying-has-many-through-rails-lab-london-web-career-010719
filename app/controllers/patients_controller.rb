class PatientsController < ApplicationController
    before_action :find_patient, only: [:show, :edit, :update]

    def index
        @patients = Patient.all
    end

    def show
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.create(patient_params)
        redirect_to patient_path(@patient)
    end

    def edit
    end

    def update
    end

    private 

    def find_patient
        @patient = Patient.find(params[:id])
    end
    
    def patient_params
        params.require(:patient).permit(:name)
    end
end
