class Patient < ApplicationRecord

  has_many :appointments
  has_many :doctors, through: :appointments
  has_many :userprescriptions
  has_many :prescriptions, through: :userprescriptions
end
