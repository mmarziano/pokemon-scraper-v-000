class Pokemon
    attr_accessor :name, :id, :type, :db 
    
    @@all = []
    
    def initialize(id:, name:, type:, db:)
      @name = name
      @id = id
      @type = type
      @db = db
      @@all << self
    end 
  
    def self.save(name, type, db) 
      db.execute("INSERT INTO pokemon (name, type) VALUE (?,?), name, type")
    end 
  
end
