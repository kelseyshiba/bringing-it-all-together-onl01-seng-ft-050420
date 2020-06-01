class Dog 
  attr_accessor :name, :breed, :id
  
  def initialize(id: nil, name:, breed:)
    @id = id
    @name = name
    @breed = breed
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE dog (
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
      );
    SQL
    
    DB[:conn].execute(sql)
  end
  
end