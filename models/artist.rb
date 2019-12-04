require('pg')
require_relative('../db/sql_runner')

class Artist

  attr_reader :id
  attr_accessor :name

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

end
