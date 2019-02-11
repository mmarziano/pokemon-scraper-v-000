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
      db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
    end 
  
    def self.find(id, db)  
      new_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
      binding.pry
      id = new_pokemon[0] 
      name = new_pokemon[1]
      type = new_pokemon[2]
      pokemon = Pokemon.new(id: id, name: name, type: type, db: db)
      pokemon
    end 
  
end
