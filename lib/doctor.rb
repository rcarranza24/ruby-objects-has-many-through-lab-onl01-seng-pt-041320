class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(self, patient, date)
end

  def patients
    appointments.collect {|appointment| appointment.patient}
  end
end
