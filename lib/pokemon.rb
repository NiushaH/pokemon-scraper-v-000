class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)
    # @id = id
    # @name = name
    # @type = type
    # @db = db
  end 

  def self.save(name, type, db)
    INSERT INTO pokemon (name, type, db) 
    VALUES (?, ?, ?)

      DB.execute(sql, self.name, self.type, self.db)

      @id = DB.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]

  end 

end
