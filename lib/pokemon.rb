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
                VALUES (?, ?, ?)")
    # @id = DB.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]

  end 

end
