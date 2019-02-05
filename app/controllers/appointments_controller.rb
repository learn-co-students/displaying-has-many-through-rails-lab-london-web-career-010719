class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new
    @appointment.name = params[:appointment][:name]
    @appointment.doctor_id = params[:appointment][:doctor_id]
    @appointment.patient_id = params[:appointment][:patient_id]
    @appointment.save
    redirect_to appointment_path(@appointment)
  end


  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(name: params[:appointment][:name], doctor_id: params[:appointment][:doctor_id], patient_id: params[:appointment][:patient_id])
    redirect_to appointment_path(@appointment)
  end



end
