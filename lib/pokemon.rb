class Pokemon


  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE pokemon (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql)
  end 



end
