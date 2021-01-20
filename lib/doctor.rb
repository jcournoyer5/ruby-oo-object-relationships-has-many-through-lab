class Doctor
    
    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        #self.save
        @@all << self
    end

    def self.all
        @@all
    end
    
    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end    
    
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
        # appointment.doctor = self
    end
    
    def patients
        appointments.map(&:patient)
        #Patient.all.select {|patient| patient.doctor == self}
    end    
end    
