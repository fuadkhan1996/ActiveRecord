class Appointment < ApplicationRecord
  before_create :check_appointment
  after_create :checked
  belongs_to :physician
  belongs_to :patient

  validates :physician_id, :patient_id, :appointment_date, presence: true

  private
    def check_appointment
      puts("Appointment Checked")
    end

    def checked
      puts("Checked")
    end
end
