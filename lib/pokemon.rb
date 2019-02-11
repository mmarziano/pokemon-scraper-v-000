class Pokemon
    attr_accessor :name, :id, :type, :db 
    
    @@all = []
    
    def initialize(arguments)
      @name = name
      @id = id
      @type = type
      @db = db
      @@all << self
    end 
  
    def self.save(name, id, type) 
      
    end 
  
end
