
require_relative('../db/sql_runner')

class House
attr_accessor :house_name, :logo_url

  def initialize(options)
    @house_name = options["house_name"]
    @logo_url = options["logo_url"]
    @id = options["id"]
  end


  def save()
    sql = "INSERT INTO houses (house_name, logo_url) VALUES ('#{@house_name}', '#{@logo_url}') RETURNING *"
    house_data = SqlRunner.run(sql)
    @id = house_data.first()['id'].to_i
  end





end
