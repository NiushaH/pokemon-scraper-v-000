class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)
    # @id = id
    # @name = name
    # @type = type
    # @db = db
  end 

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) 
                VALUES (?, ?)", [name, type])
  # @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end

  def self.find(num, db) 
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    Pokemon.new(pokemon)
  end


end
