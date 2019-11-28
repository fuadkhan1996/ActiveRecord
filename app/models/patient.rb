class Patient < ApplicationRecord
  after_destroy :deletePatient
  has_many :appointments
  has_many :patients, through: :appointments
  validates :name, presence: true

  private
    def deletePatient
      puts("Patient Deleted!")
    end
end
