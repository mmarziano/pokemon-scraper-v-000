class Pokemon
    attr_accessor :name, :id, :type, :db, :hp 
    
    @@all = []
    
    def initialize(id:, name:, type:, db:, hp: nil)
      @name = name
      @id = id
      @type = type
      @hp = hp
      @db = db
      @@all << self
    end 
  
    def self.save(name, type, db) 
      db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
    end 
  
    def self.find(id, db)  
      new_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
      id = new_pokemon[0] 
      name = new_pokemon[1]
      type = new_pokemon[2]
      pokemon = Pokemon.new(id: id, name: name, type: type, db: db)
      pokemon
    end 
  
    def alter_hp(hp, db)
      db.execute("SELECT * FROM pokemon WHERE name = ?", self.name).flatten
      binding.pry
      
    end 
end
