class AppointmentsController < ApplicationController
    before_action :find_appointment, only: [:show, :edit, :update]

    def index
        raise ActionController::RoutingError.new('Not Found')
    end
    
    def show
    end

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.create(appointment_params)
        redirect_to appointment_path(@appointment)
    end

    def edit
        redirect_to edit_appointment_path
    end

    def update
    end

    private 

    def find_appointment
        @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:appointment_datetime, :patient_name, :doctor_name)
    end
end
