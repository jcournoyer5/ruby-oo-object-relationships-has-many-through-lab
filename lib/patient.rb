class Patient
    
    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def new_appointment
    
    end
    
    def self.all
        @@all
    end
    
    def appointments
    
    end
    
    def doctors
    
    end    
    
end    
